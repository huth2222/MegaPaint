using System;
using System.ComponentModel.DataAnnotations;
namespace MegaPaint.Models
{
    public class MP_Pc
    {
        [Key]
        public string pc_code { get; set; }
        public string pc_name_th { get; set; }
        public string pc_name_en { get; set; }
        public string color_code { get; set; }
        public string picture { get; set; }
        public string pc_group_code { get; set; }
        public string create_by { get; set; }
        public DateTime create_datetime { get; set; }
        public string edit_by { get; set; }
        public DateTime edit_datetime { get; set; }
        public bool status { get; set; }
    }
}