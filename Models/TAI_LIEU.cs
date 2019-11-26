namespace Project.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class TAI_LIEU
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int IDTaiLieu { get; set; }
        [Required]
        [StringLength(300)]
        public string TenTaiLieu { get; set; }
        [Required]
        [StringLength(100)]
        public string FilePath { get; set; }
    }
}
