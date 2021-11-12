using System;
using System.Globalization;
using System.Linq;
using MegaPaint.Context;
using MegaPaint.Models;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace MegaPaint.Controllers.Entity.Product
{
    public class GroupController : Controller
    {
        private readonly ContextDB _db;
        public const string SessionEditCode = "_EditCode";
        public const string SessionPageActive = "_PageActive";

        [Obsolete]
        private readonly IHostingEnvironment _hostingEnvironment;

        [Obsolete]
        public GroupController(ContextDB context, IHostingEnvironment hostingEnvironment)
        {
            _db = context;
            _hostingEnvironment = hostingEnvironment;
        }

        public IActionResult Index(string fromform)
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
        public IActionResult Index([FromForm] MP_ProductGroup model, [FromForm] string form_type)
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
    }
}