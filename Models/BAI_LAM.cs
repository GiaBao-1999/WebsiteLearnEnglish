namespace Project.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class BAI_LAM
    {
        [Key]
        public int IDBaiLam { get; set; }

        public int? IDHocVien { get; set; }

        public int? IDBaiTap { get; set; }

        public int? IDCauTraLoi { get; set; }

        public virtual BAI_TAP BAI_TAP { get; set; }

        public virtual HOC_VIEN HOC_VIEN { get; set; }
    }
}
