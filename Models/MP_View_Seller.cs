using System;
using System.ComponentModel.DataAnnotations;

namespace MegaPaint.Models
{
    public class MP_View_Seller
    {
        [Key]
        public string seller_code { get; set; }
        public string shop_code { get; set; }
        public string fullname { get; set; }
        public string avatar { get; set; }
        public int age { get; set; }      
        public string mobile_number { get; set; }
        public string gender_name_th { get; set; }
        public string permanent_addr { get; set; }
        public string present_addr { get; set; }
    }
}