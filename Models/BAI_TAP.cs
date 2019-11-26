namespace Project.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class BAI_TAP
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public BAI_TAP()
        {
            BAI_LAM = new HashSet<BAI_LAM>();
            CAU_HOI = new HashSet<CAU_HOI>();
        }

        [Key]
        public int IDBaiTap { get; set; }

        public int? SoLuongCauHoi { get; set; }

        public int? IDLevel { get; set; }

        public int? IDBaiHoc { get; set; }

        public virtual BAI_HOC BAI_HOC { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BAI_LAM> BAI_LAM { get; set; }

        public virtual CAP_DO_CAU_HOI CAP_DO_CAU_HOI { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CAU_HOI> CAU_HOI { get; set; }
    }
}
