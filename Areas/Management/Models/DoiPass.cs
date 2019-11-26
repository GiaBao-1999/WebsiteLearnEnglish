using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace Project.Areas.Management.Models
{
    public class DoiPass
    {
        [Required]
        public string NewPass { get; set; }
        [Required]
        [Compare("NewPass")]
        public string PassConfirm { get; set; }
    }
}