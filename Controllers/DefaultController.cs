using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Project.Models;
using PagedList;

namespace Project.Controllers
{
    public class DefaultController : Controller
    {
        // GET: Default
        public DataProvider db = new DataProvider();
        public ActionResult Index(int ?page)
        {
            var dskhoahoc = db.KHOA_HOC.OrderBy(x => x.IDKhoaHoc).ToList();
            var pageSize = 3;
            var pageNumber = (page ?? 1);
            return View(dskhoahoc.ToPagedList(pageNumber, pageSize));
        }
        public ActionResult Detail(int ID)
        {
            KHOA_HOC course = db.KHOA_HOC.SingleOrDefault(x => x.IDKhoaHoc == ID);
            return View(course);
        }
    }
}