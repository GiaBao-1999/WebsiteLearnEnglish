using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace Project.Areas.Management.Models
{
    public class LoginView
    {
        [Required]
        public string Username { get; set; }
        [Required]
        public string Password { get; set; }
    }
}