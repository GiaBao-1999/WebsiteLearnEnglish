using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Project.Models;
using PagedList;

namespace Project.Areas.Management.Controllers
{
    public class LessonManagermentController : Controller
    {
        private DataProvider db = new DataProvider();

        // GET: Management/LessonManagerment
        public ActionResult Index(int ?page)
        {
            var pageSize = 6;
            var pageNumber = (page ?? 1);
            var bAI_HOC = db.BAI_HOC.OrderBy(x => x.IDKhoaHoc).ToList();
            return View(bAI_HOC.ToPagedList(pageNumber,pageSize));
        }

        // GET: Management/LessonManagerment/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            BAI_HOC bAI_HOC = db.BAI_HOC.Find(id);
            if (bAI_HOC == null)
            {
                return View("eror404");
            }
            return View(bAI_HOC);
        }

        // GET: Management/LessonManagerment/Create
        public ActionResult Create(int ID)
        {
            KHOA_HOC course = db.KHOA_HOC.SingleOrDefault(x => x.IDKhoaHoc == ID);
            ViewBag.IDKhoaHoc = new SelectList(db.KHOA_HOC, "IDKhoaHoc", "TenKhoaHoc",ID);
            ViewBag.TenKhoaHoc = course.TenKhoaHoc;
            return View();
        }

        // POST: Management/LessonManagerment/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "IDBaiHoc,TenBaiHoc,MoTaBaiHoc,IDKhoaHoc,NoiDungBaiHoc")] BAI_HOC bAI_HOC)
        {
            if (ModelState.IsValid)
            {
                db.BAI_HOC.Add(bAI_HOC);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.IDKhoaHoc = new SelectList(db.KHOA_HOC, "IDKhoaHoc", "TenKhoaHoc", bAI_HOC.IDKhoaHoc);
            return View(bAI_HOC);
        }

        // GET: Management/LessonManagerment/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            BAI_HOC bAI_HOC = db.BAI_HOC.Find(id);
            if (bAI_HOC == null)
            {
                return HttpNotFound();
            }
            ViewBag.IDKhoaHoc = new SelectList(db.KHOA_HOC, "IDKhoaHoc", "TenKhoaHoc", bAI_HOC.IDKhoaHoc);
            return View(bAI_HOC);
        }

        // POST: Management/LessonManagerment/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "IDBaiHoc,TenBaiHoc,MoTaBaiHoc,IDKhoaHoc,NoiDungBaiHoc")] BAI_HOC bAI_HOC)
        {
            if (ModelState.IsValid)
            {
                db.Entry(bAI_HOC).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.IDKhoaHoc = new SelectList(db.KHOA_HOC, "IDKhoaHoc", "TenKhoaHoc", bAI_HOC.IDKhoaHoc);
            return View(bAI_HOC);
        }

        // GET: Management/LessonManagerment/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            BAI_HOC bAI_HOC = db.BAI_HOC.Find(id);
            if (bAI_HOC == null)
            {
                return HttpNotFound();
            }
            return View(bAI_HOC);
        }

        // POST: Management/LessonManagerment/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            BAI_HOC bAI_HOC = db.BAI_HOC.Find(id);
            db.BAI_HOC.Remove(bAI_HOC);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        [HttpGet]
        public ActionResult ThemTaiLieu()
        {
            return View();
        }
        [HttpPost]
        public ActionResult ThemTaiLieu(TAI_LIEU model)
        {
            if(ModelState.IsValid)
            {
                var file = Request.Files["FilePath"];
                if(file!=null&&file.ContentLength>0)
                {
                    string path = Server.MapPath("../../../Content/Document/" + file.FileName);
                    file.SaveAs(path);
                }
                db.TAI_LIEU.Add(model);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View();
        }
        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
