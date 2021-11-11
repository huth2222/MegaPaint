using System;
using System.ComponentModel.DataAnnotations;
namespace MegaPaint.Models
{
    public class MP_Product
    {
        [Key]
        public string item_code { get; set; }
        public string name_th { get; set; }
        public string name_en { get; set; }
        public string detail_th { get; set; }
        public string tachnical_infor { get; set; }
        public string transport_infor { get; set; }
        public string retail_price { get; set; }
        public string category_code { get; set; }
        public string wholesale_price { get; set; }
        public int unit { get; set; }
        public int qty { get; set; }
        public bool type_id { get; set; }
        public string group_code { get; set; }
        public string pc_group_code { get; set; }
        public string pc_code { get; set; }
        public string create_by { get; set; }
        public DateTime create_datetime { get; set; }
        public string edit_by { get; set; }
        public DateTime edit_datetime { get; set; }
        public bool status { get; set; }
    }
}