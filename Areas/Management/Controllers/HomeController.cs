using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Project.Models;
namespace Project.Areas.Management.Controllers
{
    public class HomeController : Controller
    {
        // GET: Management/Home
        public DataProvider db = new DataProvider();
        public ActionResult Index()
        {
            ADMIN manager = (ADMIN)Session["Manager"];
            if (manager == null)
                return RedirectToAction("Login", "Manager");
            ViewBag.slhocvien = db.HOC_VIEN.Count();
            ViewBag.slkhoahoc = db.KHOA_HOC.Count();
            ViewBag.slbinhluan = db.BINH_LUAN.Count();
            return View();
        }
    }
}