using System;
using System.ComponentModel.DataAnnotations;
namespace MegaPaint.Models
{
    public class MP_View_ProductGroup
    {
        [Key]
        public string group_code { get; set; }
        public string group_name_th { get; set; }
        public string group_detail { get; set; }
        public string category_name_th { get; set; }        
    }
}