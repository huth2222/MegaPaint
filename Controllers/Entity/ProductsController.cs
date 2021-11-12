using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using MegaPaint.Context;
using MegaPaint.Models;
using MegaPaint.ViewModels.Entity.Product;
using MegaPaint.ViewModels.Entity.Product.Item;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace MegaPaint.Controllers.Entity
{
    public class ProductsController : Controller
    {
        private readonly ContextDB _db;
        public const string SessionEditCode = "_EditCode";
        public const string SessionPageActive = "_PageActive";
        public const string SessionEditShopCode = "_EditShopCode";
        [Obsolete]
        private readonly IHostingEnvironment _hostingEnvironment;

        [Obsolete]
        public ProductsController(ContextDB context, IHostingEnvironment hostingEnvironment)
        {
            _db = context;
            _hostingEnvironment = hostingEnvironment;
        }

        public IActionResult Category(string fromform)
        {
            string EditCode = HttpContext.Session.GetString("_EditCode");
            string PageActive = HttpContext.Session.GetString("_PageActive");
            if(EditCode != null && EditCode != ""){
                ViewBag.CategoryCode = EditCode;
                ViewBag.PageActive = PageActive;
            }else{
                ViewBag.CategoryCode = "";
                ViewBag.PageActive = "";
            }

            HttpContext.Session.SetString(SessionEditCode, "");
            HttpContext.Session.SetString(SessionPageActive, "");
            return View();
        }
        [HttpPost]
        public IActionResult Category([FromForm] MP_ProductCategory model, [FromForm] string form_type)
        {
            string admin_code = HttpContext.Session.GetString("_AdminCode");

            if (form_type == "Add")
            {

                var GetLastId = _db.MP_ProductCategory.OrderByDescending(o => o.category_code).FirstOrDefault();
                int default_code = 0;
                string category_code = "";
                if (GetLastId != null)
                {
                    default_code = int.Parse(GetLastId.category_code) + 1;
                    category_code = default_code.ToString("0000");
                }
                else
                {
                    category_code = "0001";
                }

                CultureInfo culture = new CultureInfo("en-US");

                MP_ProductCategory category = new MP_ProductCategory
                {
                    category_code = category_code,
                    category_name_th = model.category_name_th,
                    category_detail = model.category_detail,
                    create_by = admin_code,
                    create_datetime = DateTime.Now,
                    edit_by = "",
                    edit_datetime = Convert.ToDateTime("1900-01-01", culture),
                    status = true
                };

                try
                {
                    _db.MP_ProductCategory.Add(category);
                    _db.SaveChanges();
                }
                catch (System.Exception)
                {

                    throw;
                }
                var GetId = _db.MP_ProductCategory.OrderByDescending(o => o.category_code).FirstOrDefault();
                HttpContext.Session.SetString(SessionEditCode, GetId.category_code);
                HttpContext.Session.SetString(SessionPageActive, "Add");

            }else if (form_type == "Edit")
            {
                var GetCategoryId = _db.MP_ProductCategory.Where(c => c.category_code.Equals(model.category_code)).FirstOrDefault();
                if(GetCategoryId != null){
                    GetCategoryId.category_name_th = model.category_name_th;
                    GetCategoryId.category_detail = model.category_detail;
                    try
                    {
                         _db.SaveChanges();
                    }
                    catch (System.Exception)
                    {
                        
                        throw;
                    }
                    HttpContext.Session.SetString(SessionEditCode, model.category_code);
                    HttpContext.Session.SetString(SessionPageActive, "Edit");
                }
            }
            
            return RedirectToAction("Saving", "Active");
        }

        [Route("/[controller]/[action]")]
        [Obsolete]
        public JsonResult GetCategoryTable()
        {
            return Json(_db.MP_ProductCategory.Where(p => p.status.Equals(true)).OrderByDescending(o => o.category_code).ToList());
        }

        [Route("/[controller]/[action]/{category_code}")]
        [Obsolete]
        public JsonResult DelCategoryId([FromRoute] string category_code)
        {
            var result = _db.MP_ProductCategory.Where(c => c.category_code.Equals(category_code)).FirstOrDefault();
            try
            {
                 _db.MP_ProductCategory.Remove(result);
                 _db.SaveChanges();
            }
            catch (System.Exception)
            {
                
                throw;
            }
            return Json(result.category_name_th);
        }

        [Route("/[controller]/[action]/{category_code}")]
        [Obsolete]
        public JsonResult GetCategoryId([FromRoute] string category_code)
        {
            return Json(_db.MP_ProductCategory.Where(p => p.status.Equals(true) && p.category_code.Equals(category_code)).FirstOrDefault());
        }

        public IActionResult CategoryTable()
        {
         List<MP_ProductCategory> model = _db.MP_ProductCategory.Where(p => p.status.Equals(true)).OrderByDescending(o => o.category_code).ToList();
            return View(model);
        }

        //************* Product Group
        public IActionResult Group(string fromform)
        {
            string EditCode = HttpContext.Session.GetString("_EditCode");
            string PageActive = HttpContext.Session.GetString("_PageActive");
            if(EditCode != null && EditCode != ""){
                var GetGroupId = _db.MP_ProductGroup.Where(g => g.group_code.Equals(EditCode)).FirstOrDefault();
                ViewBag.CategoryCode = GetGroupId.category_code;
                ViewBag.GroupCode = EditCode;
                ViewBag.PageActive = PageActive;
            }else{
                ViewBag.CategoryCode = "";
                ViewBag.GroupCode = "";
                ViewBag.PageActive = "";
            }

            HttpContext.Session.SetString(SessionEditCode, "");
            HttpContext.Session.SetString(SessionPageActive, "");
            ViewBag.Category = _db.MP_ProductCategory.Where(p => p.status.Equals(true)).OrderBy(o => o.category_code).ToList();
            return View();
        }

        [HttpPost]
        public IActionResult Group([FromForm] MP_ProductGroup model, [FromForm] string form_type)
        {
            string admin_code = HttpContext.Session.GetString("_AdminCode");

            if (form_type == "Add")
            {

                var GetLastId = _db.MP_ProductGroup.OrderByDescending(o => o.group_code).FirstOrDefault();
                int default_code = 0;
                string group_code = "";
                if (GetLastId != null)
                {
                    default_code = int.Parse(GetLastId.group_code) + 1;
                    group_code = default_code.ToString("0000");
                }
                else
                {
                    group_code = "0001";
                }

                CultureInfo culture = new CultureInfo("en-US");

                MP_ProductGroup group = new MP_ProductGroup
                {
                    group_code = group_code,
                    category_code = model.category_code,
                    group_name_th = model.group_name_th,
                    group_detail = model.group_detail,
                    create_by = admin_code,
                    create_datetime = DateTime.Now,
                    edit_by = "",
                    edit_datetime = Convert.ToDateTime("1900-01-01", culture),
                    status = true
                };

                try
                {
                    _db.MP_ProductGroup.Add(group);
                    _db.SaveChanges();
                }
                catch (System.Exception)
                {

                    throw;
                }
                var GetId = _db.MP_ProductGroup.OrderByDescending(o => o.group_code).FirstOrDefault();
                HttpContext.Session.SetString(SessionEditCode, GetId.group_code);
                HttpContext.Session.SetString(SessionPageActive, "Add");

            }else if (form_type == "Edit")
            {
                var GetGroupId = _db.MP_ProductGroup.Where(g => g.group_code.Equals(model.group_code)).FirstOrDefault();
                if(GetGroupId != null){
                    GetGroupId.category_code = model.category_code;
                    GetGroupId.group_name_th = model.group_name_th;
                    GetGroupId.group_detail = model.group_detail;
                    try
                    {
                         _db.SaveChanges();
                    }
                    catch (System.Exception)
                    {
                        
                        throw;
                    }
                    HttpContext.Session.SetString(SessionEditCode, model.group_code);
                    HttpContext.Session.SetString(SessionPageActive, "Edit");
                }
            }
            
            return RedirectToAction("Saving", "Active");
        }

        [Route("/[controller]/[action]/{group_code}")]
        [Obsolete]
        public JsonResult DelGroupId([FromRoute] string group_code)
        {
            var result = _db.MP_ProductGroup.Where(g => g.group_code.Equals(group_code)).FirstOrDefault();
            try
            {
                 _db.MP_ProductGroup.Remove(result);
                 _db.SaveChanges();
            }
            catch (System.Exception)
            {
                
                throw;
            }
            return Json(result.group_name_th);
        }

        [Route("/[controller]/[action]")]
        [Obsolete]
        public JsonResult GetGroupTable()
        {
            return Json(_db.MP_View_ProductGroup.OrderByDescending(o => o.group_code).ToList());
        }

        [Route("/[controller]/[action]/{group_code}")]
        [Obsolete]
        public JsonResult GetGroupId([FromRoute] string group_code)
        {
            return Json(_db.MP_ProductGroup.Where(p => p.status.Equals(true) && p.group_code.Equals(group_code)).FirstOrDefault());
        }

        public IActionResult Items()
        {
            return View();
        }

        // public IActionResult Itemss()
        // {
        //     Product_ViewModel ViewModel = new Product_ViewModel();
        //     ViewModel.MP_ProductCategory = _db.MP_ProductCategory.OrderBy(o => o.category_code).ToList();
        //     ViewModel.MP_ProductGroup = _db.MP_ProductGroup.OrderBy(o => o.group_code).ToList();
        //     return View(ViewModel);
        // }

        // public IActionResult AddShop()
        // {
        //     ViewBag.changwat = _db.MT_AddressChangwat.ToList();
        //     return View();
        // }
    }
}