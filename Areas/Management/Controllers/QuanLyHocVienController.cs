using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Project.Models;

namespace Project.Areas.Management.Controllers
{
    public class QuanLyHocVienController : Controller
    {
        // GET: Management/QuanLyHocVien
        public DataProvider db = new DataProvider();
        public ActionResult Index()
        {
            return View(db.HOC_VIEN.ToList());
        }
        public ActionResult Delete(int ID)
        {
            ADMIN ad = (ADMIN)Session["Manager"];
            if(ad.QuyenQuanTri=="1")
            {
                HOC_VIEN s = db.HOC_VIEN.Find(ID);
                if (s == null)
                    return View("eror404");
                var dk = db.DANG_KY.Where(x => x.IDHocVien == s.IDHocVien);
                if(dk==null)
                {
                    db.HOC_VIEN.Remove(s);
                    db.SaveChanges();
                    return RedirectToAction("Index");
                }
            }
            ModelState.AddModelError("", "Bạn không có quyền xóa học viên");
            return RedirectToAction("Index");
        }
    }
}