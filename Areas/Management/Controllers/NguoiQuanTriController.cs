using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Project.Models;
using Project.Areas.Management.Models;
using System.Net;
using System.Net.Mail;

namespace Project.Areas.Management.Controllers
{
    public class NguoiQuanTriController : Controller
    {
        // GET: Management/NguoiQuanTri
        public DataProvider db = new DataProvider();
        public ActionResult Index()
        {
            ADMIN ad = (ADMIN)Session["Manager"];
                return View(db.ADMINs.Where(x=>x.Username!=ad.Username).ToList());
        }
        public ActionResult LogOut()
        {
            Session.Clear();
            return RedirectToAction("Index", "Home");
        }
        public ActionResult ReadComment()
        {
            return View(db.BINH_LUAN.ToList());
        }
        [HttpGet]
        public ActionResult GuiMail(int ID)
        {
            ViewBag.hocvien = ID;
            return View();
        }
        [HttpPost]
        public ActionResult GuiMail(Mail thu)
        {
            int idhocvien = int.Parse(Request.Form["HocVien"]);
            HOC_VIEN s = db.HOC_VIEN.Find(idhocvien);
            if (s == null)
                return View("eror404");
            if(ModelState.IsValid)
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
                message.Subject = thu.TieuDe;
                message.Body = thu.NoiDung;
                mail.Send(message);
                return RedirectToAction("ReadComment");
            }
            return View();
        }
        [HttpGet]
        public ActionResult ThemNguoiQuanLy()
        {
            ADMIN ad = (ADMIN)Session["Manager"];
            if (ad.QuyenQuanTri.Equals("1"))
                return View();
            ModelState.AddModelError("", "Bạn không đủ quyền!");
            return RedirectToAction("Index","Home");
        }
        [HttpPost]
        public ActionResult ThemNguoiQuanLy(ADMIN model)
        {
            if(ModelState.IsValid)
            {
                string pass = MaHoa.MD5(model.Password);
                model.Password = pass;
                db.ADMINs.Add(model);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View();
        }
        public ActionResult Xoa(int id)
        {
            ADMIN ad = (ADMIN)Session["Manager"];
            if(ad.QuyenQuanTri.Equals("1"))
            {
                ADMIN a = db.ADMINs.Find(id);
                db.ADMINs.Remove(a);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return RedirectToAction("Index","Home");
        }
        [HttpGet]
        public ActionResult DoiPass()
        {
            return View();
        }
        [HttpPost]
        public ActionResult DoiPass(DoiPass model)
        {
            if(ModelState.IsValid)
            {
                ADMIN ad = (ADMIN)Session["Manager"];
                ADMIN ql = db.ADMINs.Find(ad.ID);
                ql.Password = MaHoa.MD5(model.NewPass);
                db.SaveChanges();
                Session.Clear();
                return RedirectToAction("Index", "Home");
            }
            return View();
        }
    }
}