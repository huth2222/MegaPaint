using System.ComponentModel.DataAnnotations;

namespace MegaPaint.Models
{
    public class MT_AddressGeographies
    {
        [Key]
        public string geo_id { get; set; }
        public string geo_name { get; set; }
    }
}