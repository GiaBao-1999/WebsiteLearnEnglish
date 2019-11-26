using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Project.Models;
using System.Net;
using System.Net.Mail;
using Project.Areas.Management.Models;
using PagedList;

namespace Project.Areas.Management.Controllers
{
    public class CourseManagermentController : Controller
    {
        // GET: Management/CourseManagerment
        public DataProvider db = new DataProvider();
        public ActionResult Index(int ?page)
        {
            var dskhoahoc = db.KHOA_HOC.OrderBy(x => x.IDKhoaHoc).ToList();
            var pageSize = 3;
            var pageNumber = (page ?? 1);
            return View(dskhoahoc.ToPagedList(pageNumber,pageSize));
        }
        [HttpGet]
        public ActionResult Edit(int ID)
        {
            KHOA_HOC course = db.KHOA_HOC.SingleOrDefault(x => x.IDKhoaHoc == ID);
            ViewBag.IDCapDo = new SelectList(db.CAP_DO, "IDCapDo", "TenCapDo", course.IDCapDo);
            return View(course);
        }
        [HttpPost]
        public ActionResult Edit(KHOA_HOC course)
        {
            if(ModelState.IsValid)
            {
                KHOA_HOC khoahoc = db.KHOA_HOC.SingleOrDefault(x => x.IDKhoaHoc == course.IDKhoaHoc);
                khoahoc.TenKhoaHoc = course.TenKhoaHoc;
                khoahoc.NgayTao = course.NgayTao;
                var file = Request.Files["img"];
                if(file != null && file.ContentLength>0)
                {
                    string path = Server.MapPath("~/Content/img/PicEnglish/" + file.FileName);
                    file.SaveAs(path);
                    khoahoc.img = file.FileName;
                }
                khoahoc.MoTaKhoaHoc = course.MoTaKhoaHoc;
                khoahoc.IDCapDo = course.IDCapDo;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View();
        }
        public ActionResult Delete(int ID)
        {
            KHOA_HOC course = db.KHOA_HOC.Find(ID);
            if(course==null)
                return View("eror404");
            var register = db.DANG_KY.Where(x => x.IDKhoaHoc == course.IDKhoaHoc);
            var baihoc = db.BAI_HOC.Where(x => x.IDKhoaHoc == ID);
            if(register == null && baihoc == null)
            {
                db.KHOA_HOC.Remove(course);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ModelState.AddModelError("", "Khóa thể xóa khóa học này! Kiểm tra khóa học này đã có bài học hoặc học viên đăng ký hay không?");
            return RedirectToAction("Index");
        }
        [HttpGet]
        public ActionResult Insert()
        {
            ViewBag.IDCapDo = new SelectList(db.CAP_DO, "IDCapDo", "TenCapDo");
            return View();
        }
        [HttpPost]
        public ActionResult Insert(KHOA_HOC course)
        {
            if(ModelState.IsValid)
            {
                var file = Request.Files["img"];
                if (file != null && file.ContentLength > 0)
                {
                    string path = Server.MapPath("~/Content/img/PicEnglish/" + file.FileName);
                    file.SaveAs(path);
                }
                db.KHOA_HOC.Add(course);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.IDCapDo = new SelectList(db.CAP_DO, "IDCapDo", "TenCapDo",course.IDCapDo);
            return View();
        }
        [HttpGet]
        public ActionResult SendMail()
        {
            return View();
        }
        [HttpPost]
        public ActionResult SendMail(Mail thongbao)
        {
            foreach (HOC_VIEN s in db.HOC_VIEN.ToList())
            {
                var mail = new SmtpClient("smtp.gmail.com", 587)
                {
                    Credentials = new NetworkCredential("baoluffy1999@gmail.com", "0899963019"),
                    EnableSsl = true
                };
                //Tạo email
                var message = new MailMessage();
                message.From = new MailAddress("baoluffy1999@gmail.com");
                message.ReplyToList.Add("baoluffy1999@gmail.com");
                message.To.Add(new MailAddress(s.Email));
                message.Subject = thongbao.TieuDe;
                message.Body = thongbao.NoiDung;
                mail.Send(message);
            }
            ModelState.AddModelError("", "Đã gửi thông báo qua gmail");
            return RedirectToAction("Index");
        }
    }
}