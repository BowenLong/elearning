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
    
    public partial class User
    {
        public User()
        {
            this.Courses = new HashSet<Cours>();
            this.Results = new HashSet<Result>();
        }
    
        public decimal user_id { get; set; }
        public string user_name { get; set; }
        public string password { get; set; }
        public string role { get; set; }
        public decimal contact_no { get; set; }
        public string email { get; set; }
    
        public virtual ICollection<Cours> Courses { get; set; }
        public virtual ICollection<Result> Results { get; set; }
    }
}
