using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project.Models
{
    public class StudentInfo
    {
        public int IdHocVien { get; set; }
        public string HoTen { get; set; }
        public string Email { get; set; }
        public List<KHOA_HOC> KhoaHocDangKy { get; set; }
        public List<BAI_TAP> BaiTapDaLam { get; set; }
        public List<BAI_LAM> BaiLam { get; set; }
    }
}