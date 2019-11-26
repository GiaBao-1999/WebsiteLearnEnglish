namespace Project.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using System.Web.Mvc;

    public partial class KHOA_HOC
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public KHOA_HOC()
        {
            BAI_HOC = new HashSet<BAI_HOC>();
            DANG_KY = new HashSet<DANG_KY>();
        }

        [Key]
        public int IDKhoaHoc { get; set; }

        [StringLength(200)]
        [Required]
        [Display(Name ="Tên khóa học")]
        public string TenKhoaHoc { get; set; }
        
        [Display(Name = "Mô tả khóa học")]
        public string MoTaKhoaHoc { get; set; }

        [Column(TypeName = "date")]
        public DateTime? NgayTao { get; set; }

        [Column(TypeName = "date")]
        public DateTime? HanDangKy { get; set; }
        [Display(Name = "Cấp độ khóa học")]
        public int? IDCapDo { get; set; }
        [Display(Name = "Hình ảnh minh họa")]
        [StringLength(200)]
        public string img { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BAI_HOC> BAI_HOC { get; set; }

        public virtual CAP_DO CAP_DO { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DANG_KY> DANG_KY { get; set; }
    }
}
