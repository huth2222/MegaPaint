using System.Collections.Generic;
using MegaPaint.Models;

namespace MegaPaint.ViewModels.Entity.Seller
{
    public class SellerPermanent_ViewModel
    {
        public MP_SellerPermanentAddress MP_SellerPermanentAddress {get; set;}
        public List<MT_AddressChangwat> MT_AddressChangwat { get; set; }
        public List<MT_AddressAmphoe> MT_AddressAmphoe { get; set; }
        public List<MT_AddressTambon> MT_AddressTambon { get; set; }
    }
}