using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Project.Models;
using PagedList;

namespace Project.Areas.Management.Controllers
{
    public class QuestionManagermentController : Controller
    {
        // GET: Management/QuestionManagerment
        public DataProvider db = new DataProvider();
        public Model1 debai = new Model1();
        public ActionResult Index(int ?page)
        {
            int pageNumber = (page ?? 1);
            int pageSize = 10;
            var dscauhoi = db.CAU_HOI.OrderBy(x => x.MaCauHoi).ToList();
            return View(dscauhoi.ToPagedList(pageNumber,pageSize));
        }
        public ActionResult Details(int id)
        {
            CAU_HOI q = db.CAU_HOI.Find(id);
            List<CAU_TRA_LOI> a = db.CAU_TRA_LOI.Where(x => x.MaCauHoi == q.MaCauHoi).ToList();
            Question question = new Question();
            question.MaCauHoi = q.MaCauHoi;
            question.NoiDungCauHoi = q.NoiDungCauHoi;
            List<Answer> answers = new List<Answer>();
            foreach(CAU_TRA_LOI an in a)
            {
                Answer ans = new Answer();
                ans.MaCauTraLoi = an.IDCauTraLoi;
                ans.NoiDungCauTraLoi = an.NoiDungCauTraLoi;
                ans.ThuocCauHoi = question;
                answers.Add(ans);
            }
            question.ListCauTraLoi = answers;
            return View(question);
        }
        [HttpGet]
        public ActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Create(CAU_HOI model)
        {
            if(ModelState.IsValid)
            {
                db.CAU_HOI.Add(model);
                db.SaveChanges();
                return RedirectToAction("TaoCauTraLoi",new { ID=model.MaCauHoi});
            }
            return View();
        }
        [HttpGet]
        public ActionResult TaoCauTraLoi(int ID)
        {
            CAU_HOI q = db.CAU_HOI.Find(ID);
            ViewBag.Macauhoi = q.MaCauHoi;
            ViewBag.Socautraloi=q.SoCauTraLoi;
            return View();
        }
        [HttpPost]
        public ActionResult TaoCauTraLoi(int[] index)
        {
            for(int i=1; i<=index.Length; i++)
            {
                CAU_TRA_LOI a = new CAU_TRA_LOI();
                a.NoiDungCauTraLoi = Request.Form[i.ToString()];
                a.LaDapAn = Convert.ToBoolean(Request.Form["LaDapAn+"+i]);
                a.MaCauHoi = int.Parse(Request.Form["Macauhoi"]);
                db.CAU_TRA_LOI.Add(a);
                db.SaveChanges();
            }
            return RedirectToAction("Index");
        }
        public ActionResult Delete(int id)
        {
            CAU_HOI q = db.CAU_HOI.Find(id);
            if (q == null)
                return View("eror404");
            var de = debai.DE_BAI.Where(x => x.MaCauHoi == q.MaCauHoi);
            if(de!=null)
            {
                ModelState.AddModelError("", "Câu hỏi đã có trong đề bài! Không xóa được");
                return RedirectToAction("Index");
            }
            db.CAU_TRA_LOI.RemoveRange(db.CAU_TRA_LOI.Where(x => x.MaCauHoi == q.MaCauHoi));
            db.CAU_HOI.Remove(q);
            db.SaveChanges();
            ModelState.AddModelError("", "Xóa thành công");
            return RedirectToAction("Index");
        }
        public ActionResult Edit(int id)
        {
            CAU_HOI q = db.CAU_HOI.Find(id);
            return View(q);
        }
    }
}