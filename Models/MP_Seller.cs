using System;
using System.ComponentModel.DataAnnotations;

namespace MegaPaint.Models
{
    public class MP_Seller
    {
        [Key]
        public string seller_code { get; set; }
        public string shop_code { get; set; }
        public string prefix_id { get; set; }
        public string firstname { get; set; }
        public string lastname { get; set; }
        public string avatar { get; set; }
        public DateTime birthday { get; set; }        
        public string mobile_number { get; set; }
        public string gender_id { get; set; }
        public string username { get; set; }
        public string password { get; set; }
        public bool change_password { get; set; }
        public string create_by { get; set; }
        public DateTime create_datetime { get; set; }
        public string edit_by { get; set; }
        public DateTime edit_datetime { get; set; }
        public bool status { get; set; }
    }
}