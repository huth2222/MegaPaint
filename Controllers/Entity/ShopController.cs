using System;
using System.IO;
using System.Linq;
using System.Net.Http.Headers;
using MegaPaint.Context;
using MegaPaint.Models;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace MegaPaint.Controllers
{
    public class ShopController : Controller
    {
        private readonly ContextDB _db;
        public const string SessionEditShopCode = "_EditShopCode";

        [Obsolete]
        private readonly IHostingEnvironment _hostingEnvironment;

        [Obsolete]
        public ShopController(ContextDB context, IHostingEnvironment hostingEnvironment)
        {
            _db = context;
            _hostingEnvironment = hostingEnvironment;
        }

        public IActionResult AddShop()
        {
            ViewBag.changwat = _db.MT_AddressChangwat.ToList();
            return View();
        }

        [HttpPost]
        [Obsolete]
        public IActionResult AddShop([FromForm] MP_Shop model, IFormFile file)
        {
            string admin_code = HttpContext.Session.GetString("_AdminCode");

            if (model.tel != null)
            {
                model.tel = model.tel.Replace("-", "");
            }
            else
            {
                model.tel = "";
            }


            var FindShop = _db.MP_Shop.OrderByDescending(o => o.shop_code).ToList();
            int default_code = 0;
            string shop_code = "";
            if (FindShop.Count > 0)
            {
                default_code = int.Parse(FindShop[0].shop_code) + 1;
                shop_code = default_code.ToString("0000000000");
            }
            else
            {
                shop_code = "0000000001";
            }

            string fileName = string.Empty;
            string newFileName = string.Empty;
            if (file != null)
            {


                fileName = ContentDispositionHeaderValue.Parse(file.ContentDisposition).FileName.Trim('"');
                var oldName = Path.GetFileName(fileName);
                //var uniqueFilename = Convert.ToString(Guid.NewGuid()); // สุ่มตัวลักษณะคำจำนวน 128 bit
                var fileExtension = Path.GetExtension(fileName); // เก็บนามสกุลไฟล์
                newFileName = shop_code + fileExtension;
                fileName = Path.Combine(_hostingEnvironment.WebRootPath, $@"data\shop\pic") + $@"\{newFileName}";

                using (FileStream fs = System.IO.File.Create(fileName))
                {
                    file.CopyTo(fs);
                    fs.Flush();
                }
            }


            model.edit_by = "";
            model.edit_datetime = DateTime.Parse("1900-01-01");
            if (model.edit_datetime.Year < 2000)
            {
                model.edit_datetime = model.edit_datetime.AddYears(543);
            }
            else if (model.edit_datetime.Year > 2500)
            {
                model.edit_datetime = model.edit_datetime.AddYears(-543);
            }


            MP_Shop shop = new MP_Shop
            {
                shop_code = shop_code,
                shop_name_th = model.shop_name_th,
                shop_picture = newFileName,
                address_no = model.address_no,
                building = model.building,
                room = model.room,
                alley = model.alley,
                rood = model.rood,
                changwat_id = model.changwat_id,
                amphoe_id = model.amphoe_id,
                tambon_id = model.tambon_id,
                zip_code = model.zip_code,
                tel = model.tel,
                create_by = admin_code,
                create_datetime = DateTime.Now,
                edit_by = "", //Empty default
                edit_datetime = model.edit_datetime, //Empty default
                status = true
            };
            try
            {
                _db.MP_Shop.Add(shop);
                _db.SaveChanges();
            }
            catch (System.Exception)
            {

                throw;
            }

            //return Json("");
            var GetShop = _db.MP_Shop.OrderByDescending(o => o.shop_code).FirstOrDefault();
            HttpContext.Session.SetString(SessionEditShopCode, GetShop.shop_code);
            return RedirectToAction("Saving", "Active");
        }

        [Route("/[controller]/[action]/{active}/{shop_code}")]
        [Obsolete]
        public JsonResult GetShopTable([FromRoute] string active, [FromRoute] string shop_code)
        {
            if (active == "del" && shop_code != "empty" && shop_code != null)
            {
                var del = _db.MP_Shop.Where(d => d.shop_code.Equals(int.Parse(shop_code).ToString("0000000000"))).FirstOrDefault();
                if (del != null)
                {
                    try
                    {
                        _db.MP_Shop.Remove(del);
                        _db.SaveChanges();
                    }
                    catch (System.Exception)
                    {

                        throw;
                    }
                    if (del.shop_picture != null && del.shop_picture != "")
                    {
                        var oldPath = Path.Combine(_hostingEnvironment.WebRootPath, $@"data\shop\pic") + $@"\{del.shop_picture}"; //wwwroot/img/profile
                        FileInfo fi = new FileInfo(oldPath);
                        if (fi != null)
                        {
                            System.IO.File.Delete(oldPath);
                            fi.Delete();
                        }

                    }
                }
            }
            HttpContext.Session.SetString(SessionEditShopCode, "");
            var result = _db.MP_View_Shop.OrderBy(o => o.shop_code).ToList();
            return Json(result);
        }

        public IActionResult EditShop(string shop_code)
        {
            //string account_code = HttpContext.Session.GetString("_EditCode");

            var shopResult = _db.MP_Shop.Where(a => a.shop_code.Equals(shop_code)).FirstOrDefault();
            HttpContext.Session.SetString(SessionEditShopCode, "");
            MP_Shop shop = new MP_Shop();

            if (shopResult != null)
            {
                shop = shopResult;
                ViewBag.shopCode = shopResult.shop_code;
                ViewBag.Amphoe = _db.MT_AddressAmphoe.Where(a => a.changwat_id.Equals(shopResult.changwat_id)).ToList();
                ViewBag.Tambon = _db.MT_AddressTambon.Where(t => t.amphoe_id.Equals(shopResult.amphoe_id)).ToList();
            }
            else
            {
                ViewBag.shopCode = "empty";
                ViewBag.Amphoe = "";
                ViewBag.Tambon = "";
            }

            ViewBag.changwat = _db.MT_AddressChangwat.ToList();
            return View(shop);
        }

        [HttpPost]
        [Obsolete]
        public IActionResult EditShop([FromForm] MP_Shop model, IFormFile file)
        {
            string adminCode = HttpContext.Session.GetString("_AdminCode");
            var shop = _db.MP_Shop.Where(a => a.shop_code.Equals(model.shop_code)).FirstOrDefault();

            if (model.tel != null)
            {
                model.tel = model.tel.Replace("-", "");
            }
            else
            {
                model.tel = "";
            }

            string fileName = string.Empty;
            string newFileName = string.Empty;
            string inputName = "";
            if (file != null)
            {


                fileName = ContentDispositionHeaderValue.Parse(file.ContentDisposition).FileName.Trim('"');
                var oldName = Path.GetFileName(fileName);
                //var uniqueFilename = Convert.ToString(Guid.NewGuid()); // สุ่มตัวลักษณะคำจำนวน 128 bit
                var fileExtension = Path.GetExtension(fileName); // เก็บนามสกุลไฟล์
                newFileName = model.shop_code + fileExtension;
                inputName = newFileName;
                fileName = Path.Combine(_hostingEnvironment.WebRootPath, $@"data\shop\pic") + $@"\{newFileName}";


                using (FileStream fs = System.IO.File.Create(fileName))
                {
                    file.CopyTo(fs);
                    fs.Flush();
                }
            }

            if (inputName == "" && (model.shop_picture != "" && model.shop_picture != null))
            {
                inputName = model.shop_picture;
            }
            else if (inputName == "" && (model.shop_picture == "" || model.shop_picture == null) && (shop.shop_picture != "" && shop.shop_picture != null))
            {
                var oldPath = Path.Combine(_hostingEnvironment.WebRootPath, $@"data\shop\pic") + $@"\{shop.shop_picture}"; //wwwroot/img/profile
                FileInfo fi = new FileInfo(oldPath);
                if (fi != null)
                {
                    System.IO.File.Delete(oldPath);
                    fi.Delete();
                }
            }


            model.edit_by = "";
            model.edit_datetime = DateTime.Parse("1900-01-01");
            if (model.edit_datetime.Year < 2000)
            {
                model.edit_datetime = model.edit_datetime.AddYears(543);
            }
            else if (model.edit_datetime.Year > 2500)
            {
                model.edit_datetime = model.edit_datetime.AddYears(-543);
            }



            shop.shop_name_th = model.shop_name_th;
            shop.address_no = model.address_no;
            shop.building = model.building;
            shop.shop_picture = inputName;
            shop.room = model.room;
            shop.alley = model.alley;
            shop.rood = model.rood;
            shop.changwat_id = model.changwat_id;
            shop.amphoe_id = model.amphoe_id;
            shop.tambon_id = model.tambon_id;
            shop.zip_code = model.zip_code;
            shop.tel = model.tel;
            shop.edit_by = adminCode;
            shop.edit_datetime = model.edit_datetime;
            shop.status = true;
            try
            {
                _db.SaveChanges();
            }
            catch (System.Exception)
            {

                throw;
            }






            //return Json("");
            return RedirectToAction("Saving", "Active");
        }

    }
}