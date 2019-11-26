namespace Project.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class CAU_TRA_LOI
    {
        [Key]
        public int IDCauTraLoi { get; set; }

        public int? MaCauHoi { get; set; }

        [StringLength(200)]
        public string NoiDungCauTraLoi { get; set; }

        public bool? LaDapAn { get; set; }

        public virtual CAU_HOI CAU_HOI { get; set; }
    }
}
