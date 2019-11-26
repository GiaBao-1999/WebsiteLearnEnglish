namespace Project.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class BINH_LUAN
    {
        [Key]
        public int IDComment { get; set; }

        public int? IDHocVien { get; set; }

        public int? IDBaiHoc { get; set; }

        public string NoiDung { get; set; }

        public virtual BAI_HOC BAI_HOC { get; set; }

        public virtual HOC_VIEN HOC_VIEN { get; set; }
    }
}
