using System.ComponentModel.DataAnnotations;

namespace MegaPaint.Models
{
    public class MP_View_Shop
    {
        [Key]
        public string shop_code { get; set; }
        public string shop_name_th { get; set; }
        public string addr_name_th { get; set; }
        public string tel { get; set; }
    }
}