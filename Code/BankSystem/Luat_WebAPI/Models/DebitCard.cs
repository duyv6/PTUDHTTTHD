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
    
    public partial class DebitCard
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public DebitCard()
        {
            this.DebitCard_history = new HashSet<DebitCard_history>();
        }
    
        public string MaThe { get; set; }
        public string MaKH { get; set; }
        public string MatKhau { get; set; }
        public string Status { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DebitCard_history> DebitCard_history { get; set; }
        public virtual KhachHang KhachHang { get; set; }
    }
}
