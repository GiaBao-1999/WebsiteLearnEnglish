using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Project.Models;
namespace Project.Controllers
{
    public class PracticeController : Controller
    {
        // GET: Practice
        public DataProvider db = new DataProvider();
        public Model1 debai = new Model1();
        public ActionResult Index(int ID)
        {
            List<BAI_TAP> dsbaitap = db.BAI_TAP.Where(x => x.IDBaiHoc == ID).ToList();
            return View(dsbaitap);
        }
        public ActionResult LamBai(int ID)
        {
            //Lấy tất cả câu hỏi có IDBaiTap từ người dùng chọn 
            List<DE_BAI> dscauhoi = debai.DE_BAI.Where(x => x.IDBaiTap == ID).ToList();
            //Tạo danh sách câu hỏi có kiểu Question
            List<Question> listquestion = new List<Question>();
            foreach(DE_BAI d in dscauhoi )
            {
                //Tạo đối tượng Question q
                Question q = new Question();
                q.MaCauHoi = d.MaCauHoi;
                q.NoiDungCauHoi = db.CAU_HOI.SingleOrDefault(x => x.MaCauHoi == d.MaCauHoi).NoiDungCauHoi;
                //Tạo danh sách câu trả lời cho đối tượng q. Câu trả lời có kiểu Answer  
                List<Answer> a = new List<Answer>();
                List<CAU_TRA_LOI> lista = db.CAU_TRA_LOI.Where(x => x.MaCauHoi == d.MaCauHoi).ToList();
                foreach(CAU_TRA_LOI an in lista)
                {
                    Answer ans = new Answer();
                    ans.MaCauTraLoi = an.IDCauTraLoi;
                    ans.NoiDungCauTraLoi = an.NoiDungCauTraLoi;
                    ans.ThuocCauHoi = q;
                    a.Add(ans);
                }
                q.ListCauTraLoi = a;
                listquestion.Add(q);
            }
            ViewBag.mabaitap = ID;
            return View(listquestion);
        }
        public ActionResult Finish()
        {
            int dapandung = 0;
            int mabaitap = int.Parse(Request.Form["IDBaiTap"]);
            HOC_VIEN student = (HOC_VIEN)Session["HocVien"];
            List<DE_BAI> de = debai.DE_BAI.Where(x => x.IDBaiTap == mabaitap).ToList();
            foreach(DE_BAI d in de)
            {
                BAI_LAM bai = new BAI_LAM();
                bai.IDHocVien = student.IDHocVien;
                bai.IDBaiTap = mabaitap;
                bai.IDCauTraLoi = int.Parse(Request.Form[d.MaCauHoi.ToString()]);
                db.BAI_LAM.Add(bai);
                db.SaveChanges();
                CAU_TRA_LOI a = db.CAU_TRA_LOI.SingleOrDefault(x => x.IDCauTraLoi == bai.IDCauTraLoi);
                if ((bool)a.LaDapAn)
                    dapandung++;
            }
            ViewBag.socaudung = dapandung;
            ViewBag.idbaitap = mabaitap;
            return View();
        }
        public ActionResult Check(int ID)
        {
            HOC_VIEN student = (HOC_VIEN)Session["HocVien"];
            List<BAI_LAM> listbailam = db.BAI_LAM.Where(x => x.IDBaiTap == ID && x.IDHocVien == student.IDHocVien).ToList();
            List<Question> bailam = new List<Question>();
            foreach(BAI_LAM b in listbailam)
            {
                Question q = new Question();
                List<Answer> a = new List<Answer>();
                Answer ans = new Answer();
                CAU_TRA_LOI ctl = db.CAU_TRA_LOI.SingleOrDefault(x => x.IDCauTraLoi == b.IDCauTraLoi);
                ans.MaCauTraLoi = ctl.IDCauTraLoi;
                ans.NoiDungCauTraLoi = ctl.NoiDungCauTraLoi;
                a.Add(ans);
                q.ListCauTraLoi = a;
                q.MaCauHoi = ctl.CAU_HOI.MaCauHoi;
                q.NoiDungCauHoi = ctl.CAU_HOI.NoiDungCauHoi;
                bailam.Add(q);
            }
            ViewBag.idbaitap = ID;
            return View(bailam);
        }
    }
}