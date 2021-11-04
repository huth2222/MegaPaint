using System.ComponentModel.DataAnnotations;

namespace MegaPaint.Models
{
    public class MP_SellerPermanentAddress
    {
        [Key]
        public string seller_code { get; set; }
        public string address_no { get; set; }
        public string building { get; set; }
        public string room { get; set; }
        public string rood { get; set; }
        public string alley { get; set; }
        public int moo { get; set; }
        public string changwat_id { get; set; }
        public string amphoe_id { get; set; }
        public string tambon_id { get; set; }
        public string zip_code { get; set; }
        public string tel { get; set; }
        public bool status { get; set; }
    }
}