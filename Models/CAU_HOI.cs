namespace Project.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class CAU_HOI
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public CAU_HOI()
        {
            CAU_TRA_LOI = new HashSet<CAU_TRA_LOI>();
            BAI_TAP = new HashSet<BAI_TAP>();
        }

        [Key]
        public int MaCauHoi { get; set; }

        public string NoiDungCauHoi { get; set; }

        public int? SoCauTraLoi { get; set; }

        public bool? LoaiCauHoi { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CAU_TRA_LOI> CAU_TRA_LOI { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BAI_TAP> BAI_TAP { get; set; }
    }
}
