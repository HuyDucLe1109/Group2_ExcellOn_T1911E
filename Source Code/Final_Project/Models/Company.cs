//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace _ExcellOn_.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Company
    {
        public Company()
        {
            this.Customers = new HashSet<Customer>();
        }
    
        public int Id { get; set; }
        public string Company_Name { get; set; }
        public string Company_Phone { get; set; }
        public string Company_Address { get; set; }
        public string Company_Email { get; set; }
        public string Company_Description { get; set; }
        public Nullable<int> Deleted { get; set; }
    
        public virtual ICollection<Customer> Customers { get; set; }
    }
}