namespace Project.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ADMIN")]
    public partial class ADMIN
    {
        public int ID { get; set; }

        public string Username { get; set; }

        public string Password { get; set; }

        [StringLength(10)]
        public string QuyenQuanTri { get; set; }
    }
}
