using MegaPaint.Models;
using Microsoft.EntityFrameworkCore;

namespace MegaPaint.Context
{
    public class ContextDB : DbContext
    {
        public ContextDB(DbContextOptions<ContextDB> options):base(options){}

        public DbSet<MP_Admin> MP_Admin {get;set;}
        public DbSet<MP_View_Admin> MP_View_Admin {get;set;}
        public DbSet<MT_Prefix> MT_Prefix {get;set;}
        public DbSet<MP_Shop> MP_Shop {get;set;}
        public DbSet<MP_View_Shop> MP_View_Shop {get;set;}
        public DbSet<MP_Seller> MP_Seller {get;set;}
        public DbSet<MP_View_Seller> MP_View_Seller {get;set;}
        public DbSet<MT_AddressChangwat> MT_AddressChangwat {get;set;}
        public DbSet<MT_AddressAmphoe> MT_AddressAmphoe {get;set;}
        public DbSet<MT_AddressTambon> MT_AddressTambon {get;set;}        
        public DbSet<MT_Gender> MT_Gender {get;set;}
        public DbSet<MP_SellerPermanentAddress> MP_SellerPermanentAddress {get; set;}
        public DbSet<MP_SellerPresentAddress> MP_SellerPresentAddress {get; set;}     
        public DbSet<MP_ProductType> MP_ProductType {get; set;}  
        public DbSet<MP_ProductCategory> MP_ProductCategory {get; set;}
        public DbSet<MP_ProductGroup> MP_ProductGroup {get; set;}
        public DbSet<MP_View_ProductGroup> MP_View_ProductGroup {get; set;}
        public DbSet<MP_Product> MP_Product {get; set;}
        public DbSet<MP_Pc> MP_Pc {get; set;}
        public DbSet<MP_PcGroup> MP_PcGroup {get; set;}
        public DbSet<MP_ProductPicture> MP_ProductPicture {get; set;}
    }
}