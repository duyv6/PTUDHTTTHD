//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Luat_WebAPI.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class ChiNhanhNganHang
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ChiNhanhNganHang()
        {
            this.KhachHangs = new HashSet<KhachHang>();
            this.NhanViens = new HashSet<NhanVien>();
        }
    
        public string MaChiNhanhNganHang { get; set; }
        public string TenChiNhanh { get; set; }
        public string DiaChi { get; set; }
        public string SDT { get; set; }
        public string TruSoNganHang { get; set; }
    
        public virtual TruSoNganHang TruSoNganHang1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<KhachHang> KhachHangs { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<NhanVien> NhanViens { get; set; }
    }
}
