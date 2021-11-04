using System.ComponentModel.DataAnnotations;

namespace MegaPaint.Models
{
    public class MT_AddressTambon
    {
        [Key]
        public string tambon_id { get; set; }
        public string tambon_name_th { get; set; }
        public string tambon_name_en { get; set; }
        public string zip_code { get; set; }
        public string amphoe_id { get; set; }
    }
}