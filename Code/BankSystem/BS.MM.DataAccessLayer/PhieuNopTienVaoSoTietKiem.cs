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
    
    public partial class PhieuNopTienVaoSoTietKiem
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public PhieuNopTienVaoSoTietKiem()
        {
            this.LichSuGiaoDiches = new HashSet<LichSuGiaoDich>();
        }
    
        public string MaPhieuNopTien { get; set; }
        public string MaSoTietKiem { get; set; }
        public Nullable<int> SoTien { get; set; }
        public Nullable<System.DateTime> ThoiGian { get; set; }
        public string NhanVienThucHien { get; set; }
        public string ChiNhanhThucHienGiaoDich { get; set; }
        public string Status { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<LichSuGiaoDich> LichSuGiaoDiches { get; set; }
        public virtual NhanVien NhanVien { get; set; }
        public virtual SoTietKiem SoTietKiem { get; set; }
    }
}
