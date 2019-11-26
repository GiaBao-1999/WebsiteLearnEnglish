using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Project.Models;

namespace Project.Areas.Management.Controllers
{
    public class QuanLyBaiTapController : Controller
    {
        // GET: Management/QuanLyBaiTap
        public DataProvider db = new DataProvider();
        public Model1 de = new Model1();
        public ActionResult Index()
        {
            return View(db.BAI_TAP.ToList());
        }
        [HttpGet]
        public ActionResult Create()
        {
            ViewBag.IDLevel = new SelectList(db.CAP_DO_CAU_HOI, "IDLevel", "TenCapDo");
            ViewBag.IDBaiHoc = new SelectList(db.BAI_HOC, "IDBaiHoc", "TenBaiHoc");
            return View();
        }
        [HttpPost]
        public ActionResult Create(BAI_TAP model)
        {
            if (ModelState.IsValid)
            {
                db.BAI_TAP.Add(model);
                db.SaveChanges();
                return RedirectToAction("ThemDeBai", new { ID = model.IDBaiTap });
            }
            return View();
        }
        [HttpGet]
        public ActionResult ThemDeBai(int ID)
        {
            ViewBag.IDBaitap = ID;
            return View(db.CAU_HOI.ToList());
        }
        [HttpPost]
        public ActionResult ThemDeBai()
        {
            int IDbaitap = int.Parse(Request.Form["IDBaitap"]);
            int macauhoi = int.Parse(Request.Form["Macauhoi"]);
            DE_BAI d = new DE_BAI();
            d.IDBaiTap = IDbaitap;
            d.MaCauHoi = macauhoi;
            de.DE_BAI.Add(d);
            de.SaveChanges();
            return RedirectToAction("ThemDeBai",new { ID=IDbaitap});
        }
        public ActionResult Edit(int id)
        {
            BAI_TAP b = db.BAI_TAP.Find(id);
            if (b == null)
                return View("eror404");
            List<DE_BAI> list = de.DE_BAI.Where(x => x.IDBaiTap == b.IDBaiTap).ToList();
            List<CAU_HOI> dscauhoi = new List<CAU_HOI>();
            foreach(DE_BAI x in list)
            {
                dscauhoi.Add(db.CAU_HOI.Find(x.MaCauHoi));
            }
            ViewBag.idbaitap = b.IDBaiTap;
            ViewBag.socauhoi = de.DE_BAI.GroupBy(x => x.IDBaiTap == b.IDBaiTap).Count();
            return View(dscauhoi);
        }
        public ActionResult Details(int id)
        {
            BAI_TAP b = db.BAI_TAP.Find(id);
            if (b == null)
                return View("eror404");
            List<DE_BAI> list = de.DE_BAI.Where(x => x.IDBaiTap == b.IDBaiTap).ToList();
            List<CAU_HOI> dscauhoi = new List<CAU_HOI>();
            foreach (DE_BAI x in list)
            {
                dscauhoi.Add(db.CAU_HOI.Find(x.MaCauHoi));
            }
            ViewBag.idbaitap = b.IDBaiTap;
            ViewBag.socauhoi = de.DE_BAI.GroupBy(x => x.IDBaiTap == b.IDBaiTap).Count();
            return View(dscauhoi);
        }
    }
}