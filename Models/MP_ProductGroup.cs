using System;
using System.ComponentModel.DataAnnotations;
namespace MegaPaint.Models
{
    public class MP_ProductGroup
    {
        [Key]
        public string group_code { get; set; }
        public string group_name_th { get; set; }
        public string group_detail { get; set; }
        public string category_code { get; set; }
        public string create_by { get; set; }
        public DateTime create_datetime { get; set; }
        public string edit_by { get; set; }
        public DateTime edit_datetime { get; set; }
        public bool status { get; set; }
    }
}