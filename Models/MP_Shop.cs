using System;
using System.ComponentModel.DataAnnotations;

namespace MegaPaint.Models
{
    public class MP_Shop
    {
        [Key]
        public string shop_code { get; set; }
        public string shop_name_th { get; set; }
        public string shop_name_en { get; set; }
        public string shop_picture { get; set; }
        public string address_no { get; set; }
        public string building { get; set; }
        public string room { get; set; }
        public string alley { get; set; }
        public string rood { get; set; }
        public string changwat_id { get; set; }
        public string amphoe_id { get; set; }
        public string tambon_id { get; set; }
        public string zip_code { get; set; }
        public string tel { get; set; }
        public string lati_longi { get; set; }
        public string create_by { get; set; }
        public DateTime create_datetime { get; set; }
        public string edit_by { get; set; }
        public DateTime edit_datetime { get; set; }
        public bool status { get; set; }
    }
}