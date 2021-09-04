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
    
    public partial class Order
    {
        public Order()
        {
            this.OrderDetails = new HashSet<OrderDetail>();
            this.Bankings = new HashSet<Banking>();
        }
    
        public int Id { get; set; }
        public string Order_DateCreate { get; set; }
        public string Order_Description { get; set; }
        public Nullable<double> Order_TotalCost { get; set; }
        public Nullable<int> Order_Status { get; set; }
        public int CustomerId { get; set; }
    
        public virtual ICollection<OrderDetail> OrderDetails { get; set; }
        public virtual Customer Customer { get; set; }
        public virtual ICollection<Banking> Bankings { get; set; }
    }
}