using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Project.Models;

namespace Project.Controllers
{
    public class StudentController : Controller
    {
        // GET: Student
        public DataProvider db = new DataProvider();
        public Model1 de = new Model1();
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
        public ActionResult Login(StudentLoginView model)
        {
            string pass = MaHoa.MD5(model.Password);
            HOC_VIEN student = db.HOC_VIEN.SingleOrDefault(x => x.Email.Equals(model.Email) && x.Password.Equals(pass));
            if(student!=null)
            {
                Session["HocVien"] = student;
                return RedirectToAction("Index", "Default");
            }
            ModelState.AddModelError("", "Email hoặc mật khẩu không chính xác!");
            return View();
        }
        [HttpGet]
        public ActionResult Register()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Register(StudentRegisterView model)
        {
            if (ModelState.IsValid)
            {
                HOC_VIEN student = db.HOC_VIEN.SingleOrDefault(x => x.Email.Equals(model.Email));
                if (student == null)
                {
                    HOC_VIEN newStudent = new HOC_VIEN();
                    newStudent.HoTen = model.HoTen;
                    newStudent.Email = model.Email;
                    newStudent.Password = MaHoa.MD5(model.Password);
                    db.HOC_VIEN.Add(newStudent);
                    db.SaveChanges();
                    Session["HocVien"] = newStudent;
                    return RedirectToAction("Index", "Default");
                }
                ModelState.AddModelError("", "Email đã tồn tại! Vui lòng nhập email khác");
            }
            return View();
        }
        public ActionResult RegistedCourse()
        {
            HOC_VIEN student = (HOC_VIEN)Session["HocVien"];
            List<DANG_KY> registercourse = db.DANG_KY.Where(x => x.IDHocVien == student.IDHocVien).ToList();
            return View(registercourse);
        }
        public ActionResult Practice()
        {
            HOC_VIEN student = (HOC_VIEN)Session["HocVien"];
            List<DANG_KY> registercourse = db.DANG_KY.Where(x => x.IDHocVien == student.IDHocVien).ToList();
            if(registercourse!=null)
            {
                List<BAI_TAP> baitap = new List<BAI_TAP>();
                foreach (DANG_KY r in registercourse)
                {
                    KHOA_HOC k = db.KHOA_HOC.SingleOrDefault(x => x.IDKhoaHoc == r.IDKhoaHoc);
                    List<BAI_HOC> baihoc = db.BAI_HOC.Where(x => x.IDKhoaHoc == k.IDKhoaHoc).ToList();
                    foreach (BAI_HOC bh in baihoc)
                    {
                        List<BAI_TAP> bt = db.BAI_TAP.Where(x => x.IDBaiHoc == bh.IDBaiHoc).ToList();
                        foreach (BAI_TAP b in bt)
                            baitap.Add(b); 
                    }
                }
                return View(baitap);
            }
            ModelState.AddModelError("", "Chưa đăng ký khóa học");
            return View("404");
        }
        public ActionResult Info()
        {
            HOC_VIEN student = (HOC_VIEN)Session["HocVien"];
            StudentInfo info = new StudentInfo();
            info.IdHocVien = student.IDHocVien;
            info.HoTen = student.HoTen;
            info.Email = student.Email;
            List<KHOA_HOC> kh = new List<KHOA_HOC>();
            foreach(DANG_KY dk in db.DANG_KY.Where(x=>x.IDHocVien==student.IDHocVien).ToList())
            {
                KHOA_HOC k = db.KHOA_HOC.SingleOrDefault(x => x.IDKhoaHoc == dk.IDKhoaHoc);
                kh.Add(k);
            }
            info.KhoaHocDangKy = kh;
            var baitapdalam = db.BAI_LAM.Where(x => x.IDHocVien == student.IDHocVien).GroupBy(b => b.IDBaiTap).Select(c => c.Key);
            List<BAI_TAP> bt = new List<BAI_TAP>();
            foreach(int x in baitapdalam)
            {
                BAI_TAP b = db.BAI_TAP.SingleOrDefault(m => m.IDBaiTap == x);
                bt.Add(b);
            }
            info.BaiTapDaLam = bt;
            var kq = from m in db.BAI_LAM
                     where m.IDHocVien == student.IDHocVien
                     group m by new { m.IDHocVien, m.IDBaiTap } into NHOM
                     from n in NHOM
                     select n;
            info.BaiLam = kq.ToList();
            return View(info);
        }
        public ActionResult XemBaiLam(int idbaitap,int hocvien)
        {
            List<BAI_LAM> bailam = db.BAI_LAM.Where(x => x.IDHocVien == hocvien && x.IDBaiTap == idbaitap).ToList();
            List<CAU_TRA_LOI> cautraloi = new List<CAU_TRA_LOI>();
            foreach(BAI_LAM b in bailam)
            {
                cautraloi.Add(db.CAU_TRA_LOI.Find(b.IDCauTraLoi));
            }
            return View(cautraloi);
        }
    }
}