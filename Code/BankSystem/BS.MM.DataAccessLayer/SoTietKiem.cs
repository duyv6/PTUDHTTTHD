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
    
    public partial class SoTietKiem
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public SoTietKiem()
        {
            this.PhieuNopTienVaoSoTietKiems = new HashSet<PhieuNopTienVaoSoTietKiem>();
        }
    
        public string MaSoTietKiem { get; set; }
        public string MaKH { get; set; }
        public Nullable<System.DateTime> NgayMoSo { get; set; }
        public string NgayHetHan { get; set; }
        public Nullable<int> SoDu { get; set; }
        public string LoaiSo { get; set; }
        public string Status { get; set; }
    
        public virtual KhachHang KhachHang { get; set; }
        public virtual LoaiSoTietKiem LoaiSoTietKiem { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PhieuNopTienVaoSoTietKiem> PhieuNopTienVaoSoTietKiems { get; set; }
    }
}
