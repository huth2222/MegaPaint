using System.Collections.Generic;
using MegaPaint.Models;
using MegaPaint.ViewModels.Entity;
using MegaPaint.ViewModels.Entity.Seller;

namespace MegaPaint.ViewModels
{
    public class Seller_ViewModel
    {
        public List<MT_Prefix> MT_Prefix { get; set; }
        public List<MT_Gender> MT_Gender { get; set; }
        public List<MP_View_Shop> MP_View_Shop { get; set; }
        public MP_SellerPermanentAddress MP_SellerPermanentAddress {get; set;}
        public MP_SellerPresentAddress MP_SellerPresentAddress {get; set;}
        public MP_View_Seller MP_View_Seller { get; set; }
        public MP_Seller MP_Seller { get; set; }     
    }
}