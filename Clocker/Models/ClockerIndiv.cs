//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Clocker.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class ClockerIndiv
    {
        public int IndivID { get; set; }
        public int Points { get; set; }
        public int GroupID { get; set; }
    
        public virtual ClockerGroup Entity2 { get; set; }
    }
}
