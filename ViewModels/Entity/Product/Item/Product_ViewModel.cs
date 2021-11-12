using System.Collections.Generic;
using MegaPaint.Models;
namespace MegaPaint.ViewModels.Entity.Product.Item
{
    public class Product_ViewModel
    {
        public List<MP_ProductCategory> MP_ProductCategory {get; set;}
        public List<MP_ProductGroup> MP_ProductGroup {get; set;}
        public MP_Product MP_Product {get; set;}
    }
}