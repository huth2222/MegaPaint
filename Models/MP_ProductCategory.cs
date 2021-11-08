using System.ComponentModel.DataAnnotations;

namespace MegaPaint.Models
{
    public class MP_ProductCategory
    {
        [Key]
        public string category_code { get; set; }
        public string category_name_th { get; set; }
        public string category_name_en { get; set; }
    }
}