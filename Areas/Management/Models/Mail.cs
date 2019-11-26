using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace Project.Areas.Management.Models
{
    public class Mail
    {
        [Required]
        public string TieuDe { get; set; }
        [Required]
        public string NoiDung { get; set; }
    }
}