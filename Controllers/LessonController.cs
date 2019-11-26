using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Project.Models;

namespace Project.Controllers
{
    public class LessonController : Controller
    {
        // GET: Lesson
        public DataProvider db = new DataProvider();
        public ActionResult Index(int ID)
        {
            KHOA_HOC course = db.KHOA_HOC.SingleOrDefault(x => x.IDKhoaHoc == ID);
            BAI_HOC lesson = course.BAI_HOC.Skip(0).Take(1).FirstOrDefault();
            ViewBag.IdLesson = lesson.IDBaiHoc;
            return View(course.BAI_HOC.ToList());
        }
        public ActionResult Display()
        {
            int idlesson = int.Parse(Request.QueryString["IDLesson"]);
            int idcourse = int.Parse(Request.QueryString["IDCourse"]);
            BAI_HOC lesson = db.BAI_HOC.SingleOrDefault(x => x.IDBaiHoc == idlesson);
            ViewBag.IdLesson = lesson.IDBaiHoc;
            List<BAI_HOC> listbaihoc = db.BAI_HOC.Where(x => x.IDKhoaHoc == idcourse).ToList();
            return View("Index",listbaihoc);
        }
        public ActionResult Comment()
        {
            int idlesson = int.Parse(Request.Form["IDLesson"]);
            string content = Request.Form["content"];
            HOC_VIEN student = (HOC_VIEN)Session["HocVien"];
            BINH_LUAN comment = new BINH_LUAN();
            comment.IDBaiHoc = idlesson;
            comment.IDHocVien = student.IDHocVien;
            comment.NoiDung = content;
            db.BINH_LUAN.Add(comment);
            db.SaveChanges();
            ViewBag.IdLesson = idlesson;
            int idcourse = int.Parse(Request.Form["IDCourse"]);
            List<BAI_HOC> listbaihoc = db.BAI_HOC.Where(x => x.IDKhoaHoc == idcourse).ToList();
            return View("Index",listbaihoc);
        }
    }
}