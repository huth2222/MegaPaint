using System;
using System.Globalization;
using System.Linq;
using MegaPaint.Context;
using MegaPaint.Models;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace MegaPaint.Controllers.Entity
{
    public class ProductController : Controller
    {
        private readonly ContextDB _db;
        public const string SessionEditCode = "_EditCode";
        [Obsolete]
        private readonly IHostingEnvironment _hostingEnvironment;

        [Obsolete]
        public ProductController(ContextDB context, IHostingEnvironment hostingEnvironment)
        {
            _db = context;
            _hostingEnvironment = hostingEnvironment;
        }

        public IActionResult Type(string fromform)
        {
            if(fromform == "AddEdit"){
                string typeCode = HttpContext.Session.GetString("_EditCode");
                ViewBag.typeCode = typeCode;
            }else{
                ViewBag.typeCode = "";
            }
            return View();
        }
        [HttpPost]
        public IActionResult Type([FromForm]MP_ProductType model)
        {
            string admin_code = HttpContext.Session.GetString("_AdminCode");
            
            var GetLastId = _db.MP_ProductType.OrderByDescending(o => o.type_code).FirstOrDefault();
            int default_code = 0;
            string type_code = "";
            if (GetLastId != null)
            {
                default_code = int.Parse(GetLastId.type_code) + 1;
                type_code = default_code.ToString("0000000000");
            }
            else
            {
                type_code = "0000000001";
            }

            CultureInfo culture = new CultureInfo("en-US");

            MP_ProductType type = new MP_ProductType
            {
                type_code = type_code,
                type_name_th = model.type_name_th,
                type_detail = model.type_detail,
                create_by = admin_code,
                create_datetime = DateTime.Now,
                edit_by = "",
                edit_datetime = Convert.ToDateTime("1900-01-01", culture)
            };

            try
            {
                 _db.MP_ProductType.Add(type);
                 _db.SaveChanges();
            }
            catch (System.Exception)
            {
                
                throw;
            }
            var GetId = _db.MP_ProductType.OrderByDescending(o => o.type_code).FirstOrDefault();

            HttpContext.Session.SetString(SessionEditCode, GetId.type_code);
            return RedirectToAction("Saving", "Active");
        }

        [Route("/[controller]/[action]/{active}/{type_code}")]
        [Obsolete]
        public JsonResult GetTypeTable([FromRoute] string active, [FromRoute] string type_code)
        {
            return Json(_db.MP_ProductType.Where(p => p.status.Equals(true)).ToList());
        }

        public IActionResult AddCategory()
        {
            return View();
        }
    }
}