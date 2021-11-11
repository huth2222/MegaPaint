using System;
using System.ComponentModel.DataAnnotations;
namespace MegaPaint.Models
{
    public class MP_ProductPicture
    {
        [Key]
        public string item_code { get; set; }
        public string picture { get; set; }
        public int row { get; set; }
        public string create_by { get; set; }
        public DateTime create_datetime { get; set; }
        public string edit_by { get; set; }
        public DateTime edit_datetime { get; set; }
        public bool status { get; set; }
    }
}