//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace GenerateData
{
    using System;
    using System.Collections.Generic;
    
    public partial class Log
    {
        public int LogId { get; set; }
        public int ItemId { get; set; }
        public double ItemValue { get; set; }
        public System.DateTime Date { get; set; }
        public string HashValue { get; set; }
        public byte[] TimeStamp { get; set; }
    
        public virtual Item Item { get; set; }
    }
}
