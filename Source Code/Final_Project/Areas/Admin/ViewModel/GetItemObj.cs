using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace _ExcellOn_.Areas.Admin.ViewModel
{
    public class GetItemObj
    {
        public int current_page { get; set; }
        public int ord_id { get; set; }
        public List<int> list_staff_id_checked { get; set; }

    }
}