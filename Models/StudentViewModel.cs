using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
namespace Project.Models
{
    public class StudentLoginView
    {
        [EmailAddress(ErrorMessage ="Email không hợp lệ")]
        [Required(ErrorMessage ="Email không được để trống")]
        public string Email { get; set; }
        [Required(ErrorMessage ="Mật khẩu không được để trống")]
        public string Password { get; set; }
    }
    public class StudentRegisterView
    {
        [Required(ErrorMessage = "Họ tên không được để trống")]
        public string HoTen { get; set; }

        [EmailAddress(ErrorMessage = "Email không hợp lệ")]
        [Required(ErrorMessage = "Email không được để trống")]
        public string Email { get; set; }

        [Required(ErrorMessage = "Mật khẩu không được để trống")]
        public string Password { get; set; }

        [Compare("Password",ErrorMessage ="Mật khẩu nhập lại không khớp")]
        [Required(ErrorMessage = "Mật khẩu nhập lại không được để trống")]
        public string PasswordConfirm { get; set; }
    }
}