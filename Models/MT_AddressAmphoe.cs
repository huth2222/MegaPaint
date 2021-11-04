using System.ComponentModel.DataAnnotations;

namespace MegaPaint.Models
{
    public class MT_AddressAmphoe
    {
        [Key]
        public string amphoe_id { get; set; }
        public string amphoe_name_th { get; set; }
        public string amphoe_name_en { get; set; }
        public string changwat_id { get; set; }
    }
}