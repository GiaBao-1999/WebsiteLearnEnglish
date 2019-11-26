namespace Project.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class BAI_HOC
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public BAI_HOC()
        {
            BAI_TAP = new HashSet<BAI_TAP>();
            BINH_LUAN = new HashSet<BINH_LUAN>();
        }

        [Key]
        public int IDBaiHoc { get; set; }

        [StringLength(200)]
        public string TenBaiHoc { get; set; }

        [StringLength(200)]
        public string MoTaBaiHoc { get; set; }

        public int? IDKhoaHoc { get; set; }
        public string NoiDungBaiHoc { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BAI_TAP> BAI_TAP { get; set; }

        public virtual KHOA_HOC KHOA_HOC { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BINH_LUAN> BINH_LUAN { get; set; }
    }
}
