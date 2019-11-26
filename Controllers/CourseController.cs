using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Project.Models;
using System.Net;
using System.Net.Mail;

namespace Project.Controllers
{
    public class CourseController : Controller
    {
        // GET: Course
        public DataProvider db = new DataProvider();
        public ActionResult Index(int ID)
        {
            //Kiểm tra đã đăng nhập 
            HOC_VIEN student = (HOC_VIEN)Session["HocVien"];
            if (student == null)
                return RedirectToAction("Login", "Student");
            //Kiểm tra đã đăng ký khóa học hiện tại chưa
            DANG_KY register = db.DANG_KY.SingleOrDefault(x => x.IDHocVien == student.IDHocVien && x.IDKhoaHoc == ID);
            if(register!=null)//Nếu có chuyển đến trang các khóa học đã đăng ký
            {
                return RedirectToAction("RegistedCourse", "Student");
            }
            //Nếu chưa gửi mã xác nhận khóa học qua gmail học viên
            //Câu hình thông tin gmail
            var mail = new SmtpClient("smtp.gmail.com", 587)
            {
                Credentials = new NetworkCredential("baoluffy1999@gmail.com", "0899963019"),
                EnableSsl = true
            };
            //Tạo email
            var message = new MailMessage();
            message.From = new MailAddress("baoluffy1999@gmail.com");
            message.ReplyToList.Add("baoluffy1999@gmail.com");
            message.To.Add(new MailAddress(student.Email));
            message.Subject = "Mã xác nhận đăng ký khóa học";
            message.Body = "Mã xác nhận: "+ID;
            mail.Send(message);
            Session["MaKhoaHoc"] = ID;
            return View();
        }
        public ActionResult Confirm()
        {
            //Kiểm tra mã xác nhận nhập vào có trùng với mã đã gửi
            int maxacnhan = int.Parse(Request.Form["maxacnhan"]);
            int makhoahoc = (int)Session["MaKhoaHoc"];
            if(makhoahoc==maxacnhan)//Nếu trùng thì lưu vào bảng DANG_KY
            {
                KHOA_HOC course = db.KHOA_HOC.SingleOrDefault(x => x.IDKhoaHoc == makhoahoc);
                HOC_VIEN student = (HOC_VIEN)Session["HocVien"];
                DANG_KY register = new DANG_KY();
                register.IDHocVien = student.IDHocVien;
                register.IDKhoaHoc = course.IDKhoaHoc;
                register.NgayDangKy = DateTime.Now;
                db.DANG_KY.Add(register);
                db.SaveChanges();
                return View(course);
            }
            ModelState.AddModelError("", "Mã xác nhận không khớp");
            return View("Index");
        }
    }
}