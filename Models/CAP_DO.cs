namespace Project.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class CAP_DO
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public CAP_DO()
        {
            KHOA_HOC = new HashSet<KHOA_HOC>();
        }

        [Key]
        public int IDCapDo { get; set; }

        [StringLength(200)]
        public string TenCapDo { get; set; }

        [StringLength(100)]
        public string TenChungChi { get; set; }

        public decimal? ThangDiem { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<KHOA_HOC> KHOA_HOC { get; set; }
    }
}
