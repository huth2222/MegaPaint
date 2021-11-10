using System;
using System.Globalization;
using System.Linq;
using MegaPaint.Context;
using MegaPaint.Models;
using MegaPaint.ViewModels.Entity.Product;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace MegaPaint.Controllers.Entity
{
    public class ProductController : Controller
    {
        private readonly ContextDB _db;
        public const string SessionEditCode = "_EditCode";
        public const string SessionPageActive = "_PageActive";
        [Obsolete]
        private readonly IHostingEnvironment _hostingEnvironment;

        [Obsolete]
        public ProductController(ContextDB context, IHostingEnvironment hostingEnvironment)
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
                    category_code = "0000";
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
            ViewBag.CategoryTable = _db.MP_ProductCategory.Where(p => p.status.Equals(true)).OrderByDescending(o => o.category_code).ToList();
            Category_ViewModel model = new Category_ViewModel();
            
            return View();
        }

        public IActionResult AddCategory()
        {
            return View();
        }

        public IActionResult Test()
        {
            return View();
        }
    }
}