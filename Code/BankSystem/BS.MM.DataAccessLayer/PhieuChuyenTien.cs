//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace BS.MM.DataAccessLayer
{
    using System;
    using System.Collections.Generic;
    
    public partial class PhieuChuyenTien
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public PhieuChuyenTien()
        {
            this.LichSuGiaoDiches = new HashSet<LichSuGiaoDich>();
        }
    
        public string MaPhieuChuyenTien { get; set; }
        public string NguoiChuyen { get; set; }
        public string NguoiNhan { get; set; }
        public Nullable<System.DateTime> NgayChuyen { get; set; }
        public Nullable<int> SoTienChuyen { get; set; }
        public string ChiNhanhChuyen { get; set; }
        public string NhanVienThucHien { get; set; }
        public string Status { get; set; }
    
        public virtual KhachHang KhachHang { get; set; }
        public virtual KhachHang KhachHang1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<LichSuGiaoDich> LichSuGiaoDiches { get; set; }
        public virtual NhanVien NhanVien { get; set; }
    }
}