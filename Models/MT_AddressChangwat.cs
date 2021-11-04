using System.ComponentModel.DataAnnotations;

namespace MegaPaint.Models
{
    public class MT_AddressChangwat
    {
        [Key]
        public string changwat_id { get; set; }
        public string changwat_name_th { get; set; }
        public string changwat_name_en { get; set; }
        public string geo_id { get; set; }
    }
}