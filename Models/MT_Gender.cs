using System.ComponentModel.DataAnnotations;

namespace MegaPaint.Models
{
    public class MT_Gender
    {
        [Key]
        public string gender_id { get; set; }
        public string gender_name_th { get; set; }
        public string gender_name_en { get; set; }
    }
}