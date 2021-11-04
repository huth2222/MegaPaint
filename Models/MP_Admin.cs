using System;
using System.ComponentModel.DataAnnotations;

namespace MegaPaint.Models
{
    public class MP_Admin
    {
        [Key]
        public string admin_code { get; set; }
        [Required(ErrorMessage ="prefix_id")]
        public string prefix_id { get; set; }
        [Required(ErrorMessage ="firstname")]
        public string firstname { get; set; }
        [Required(ErrorMessage ="lastname")]
        public string lastname { get; set; }
        public string avatar { get; set; }
        public DateTime birthday { get; set; }        
        public string mobile_number { get; set; }
        public string gender_id { get; set; }
        [Required(ErrorMessage ="username")]
        public string username { get; set; }
        [Required(ErrorMessage ="password")]
        public string password { get; set; }
        public bool change_password { get; set; }
        public string create_by { get; set; }
        public DateTime create_datetime { get; set; }
        public string edit_by { get; set; }
        public DateTime edit_datetime { get; set; }
        public int level_id { get; set; }
        public bool status { get; set; }
    }
}