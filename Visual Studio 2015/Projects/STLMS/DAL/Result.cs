//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DAL
{
    using System;
    using System.Collections.Generic;
    
    public partial class Result
    {
        public decimal user_id { get; set; }
        public string question_id { get; set; }
        public string lesson_id { get; set; }
        public Nullable<decimal> pre { get; set; }
        public Nullable<decimal> post { get; set; }
        public Nullable<decimal> increase { get; set; }
        public bool complete { get; set; }
    
        public virtual Lesson Lesson { get; set; }
        public virtual User User { get; set; }
    }
}
