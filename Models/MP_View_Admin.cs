using System;
using System.ComponentModel.DataAnnotations;

namespace MegaPaint.Models
{
    public class MP_View_Admin
    {
        [Key]
        public string admin_code { get; set; }
        public string prefix_name_th { get; set; }
        public string username { get; set; }
        public string password { get; set; }
        public string firstname { get; set; }
        public string lastname { get; set; }
        public DateTime birthday { get; set; }
        public int age { get; set; }
        public string avatar { get; set; }
        public int level_id { get; set; }
        public string mobile_number { get; set; }
        public string gender_name_th { get; set; }
        public bool change_password { get; set; }
    }
}