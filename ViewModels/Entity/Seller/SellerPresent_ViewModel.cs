using System.Collections.Generic;
using MegaPaint.Models;

namespace MegaPaint.ViewModels.Entity.Seller
{
    public class SellerPresent_ViewModel
    {
        public MP_SellerPresentAddress MP_SellerPresentAddress {get; set;}
        public List<MT_AddressChangwat> MT_AddressChangwat { get; set; }
        public List<MT_AddressAmphoe> MT_AddressAmphoe { get; set; }
        public List<MT_AddressTambon> MT_AddressTambon { get; set; }
    }
}