using System.ComponentModel.DataAnnotations;

namespace MegaPaint.Models
{
    public class MT_Prefix
    {
        [Key]
        public string prefix_id { get; set; }
        public string prefix_name_th { get; set; }
        public string prefix_name_en { get; set; }
    }
}