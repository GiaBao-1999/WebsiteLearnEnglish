using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Project.Models;

namespace Project.Controllers
{
    public class DocumentController : Controller
    {
        // GET: Document
        public DataProvider db = new DataProvider();
        public ActionResult Index()
        {
            return View(db.TAI_LIEU.ToList());
        }
        public ActionResult Download(int ID)
        {
            TAI_LIEU doc = db.TAI_LIEU.SingleOrDefault(x => x.IDTaiLieu == ID);
            Response.Clear();
            Response.ContentType = "application/octect-stream";
            Response.AppendHeader("content-disposition", "filename=" + doc.FilePath);
            Response.TransmitFile(Server.MapPath("~/Content/Document/") + doc.FilePath);
            Response.End();
            return RedirectToAction("Index");
        }
    }
}