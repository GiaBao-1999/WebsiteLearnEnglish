namespace Project.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class DataProvider : DbContext
    {
        public DataProvider()
            : base("name=DataProvider")
        {
        }

        public virtual DbSet<ADMIN> ADMINs { get; set; }
        public virtual DbSet<BAI_HOC> BAI_HOC { get; set; }
        public virtual DbSet<BAI_LAM> BAI_LAM { get; set; }
        public virtual DbSet<BAI_TAP> BAI_TAP { get; set; }
        public virtual DbSet<BINH_LUAN> BINH_LUAN { get; set; }
        public virtual DbSet<CAP_DO> CAP_DO { get; set; }
        public virtual DbSet<CAP_DO_CAU_HOI> CAP_DO_CAU_HOI { get; set; }
        public virtual DbSet<CAU_HOI> CAU_HOI { get; set; }
        public virtual DbSet<CAU_TRA_LOI> CAU_TRA_LOI { get; set; }
        public virtual DbSet<DANG_KY> DANG_KY { get; set; }
        public virtual DbSet<HOC_VIEN> HOC_VIEN { get; set; }
        public virtual DbSet<KHOA_HOC> KHOA_HOC { get; set; }
        public virtual DbSet<TAI_LIEU> TAI_LIEU { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<ADMIN>()
                .Property(e => e.Username)
                .IsUnicode(false);

            modelBuilder.Entity<ADMIN>()
                .Property(e => e.Password)
                .IsUnicode(false);

            modelBuilder.Entity<ADMIN>()
                .Property(e => e.QuyenQuanTri)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<BAI_HOC>()
                .Property(e => e.NoiDungBaiHoc)
                .IsUnicode(false);

            modelBuilder.Entity<BAI_TAP>()
                .HasMany(e => e.CAU_HOI)
                .WithMany(e => e.BAI_TAP)
                .Map(m => m.ToTable("DE_BAI").MapLeftKey("IDBaiTap").MapRightKey("MaCauHoi"));

            modelBuilder.Entity<CAP_DO>()
                .Property(e => e.ThangDiem)
                .HasPrecision(18, 0);

            modelBuilder.Entity<CAU_HOI>()
                .Property(e => e.NoiDungCauHoi)
                .IsUnicode(false);

            modelBuilder.Entity<CAU_TRA_LOI>()
                .Property(e => e.NoiDungCauTraLoi)
                .IsUnicode(false);

            modelBuilder.Entity<HOC_VIEN>()
                .Property(e => e.Email)
                .IsUnicode(false);

            modelBuilder.Entity<HOC_VIEN>()
                .Property(e => e.Username)
                .IsUnicode(false);

            modelBuilder.Entity<HOC_VIEN>()
                .Property(e => e.Password)
                .IsUnicode(false);

            modelBuilder.Entity<HOC_VIEN>()
                .HasMany(e => e.DANG_KY)
                .WithRequired(e => e.HOC_VIEN)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<KHOA_HOC>()
                .Property(e => e.img)
                .IsUnicode(false);

            modelBuilder.Entity<KHOA_HOC>()
                .HasMany(e => e.DANG_KY)
                .WithRequired(e => e.KHOA_HOC)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<TAI_LIEU>()
                .Property(e => e.FilePath)
                .IsUnicode(false);
        }
    }
}
