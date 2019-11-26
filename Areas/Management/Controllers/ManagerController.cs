using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Project.Models;
using Project.Areas.Management.Models;

namespace Project.Areas.Management.Controllers
{
    public class ManagerController : Controller
    {
        // GET: Management/Manager
        public DataProvider db = new DataProvider();
        public ActionResult Index()
        {
            return View();
        }
        [HttpGet]
        public ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Login(LoginView model)
        {
            if(ModelState.IsValid)
            {
                string pass = MaHoa.MD5(model.Password);
                ADMIN manager = db.ADMINs.SingleOrDefault(x => x.Username.Equals(model.Username) && x.Password.Equals(pass));
                if(manager!=null)
                {
                    Session["Manager"] = manager;
                    return RedirectToAction("Index", "Home");
                }
                ModelState.AddModelError("", "Đăng nhập thất bại!");
            }
            return View();
        }
    }
}