using System;
using System.IO;
using System.Linq;
using System.Net.Http.Headers;
using MegaPaint.Context;
using MegaPaint.Models;
using MegaPaint.ViewModels;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace MegaPaint.Controllers
{
    public class SellerController : Controller
    {
        private readonly ContextDB _db;
        public const string SessionEditSellerCode = "_EditSellerCode";

        [Obsolete]
        private readonly IHostingEnvironment _hostingEnvironment;

        [Obsolete]
        public SellerController(ContextDB context, IHostingEnvironment hostingEnvironment)
        {
            _db = context;
            _hostingEnvironment = hostingEnvironment;
        }

        public IActionResult AddSeller()
        {
            Seller_ViewModel mainView = new Seller_ViewModel();
            mainView.MT_Gender = _db.MT_Gender.ToList();
            mainView.MT_Prefix = _db.MT_Prefix.ToList();
            mainView.MP_View_Shop = _db.MP_View_Shop.ToList();
            ViewBag.Changwat = _db.MT_AddressChangwat.ToList();
            return View(mainView);
        }

        [HttpPost]
        [Obsolete]
        public IActionResult AddSeller([FromForm] Seller_ViewModel model, IFormFile file)
        {
            string admin_code = HttpContext.Session.GetString("_AdminCode");

            if (model.MP_Seller.mobile_number != null)
            {
                model.MP_Seller.mobile_number = model.MP_Seller.mobile_number.Replace("-", "").Trim();
            }
            else
            {
                model.MP_Seller.mobile_number = "";
            }


            var FindSeller = _db.MP_Seller.OrderByDescending(s => s.seller_code).ToList();
            int default_code = 0;
            string seller_code = "";
            if (FindSeller.Count > 0)
            {
                default_code = int.Parse(FindSeller[0].seller_code) + 1;
                seller_code = default_code.ToString("0000000000");
            }
            else
            {
                seller_code = "0000000001";
            }

            string fileName = "";
            string newFileName = "";
            if (file != null)
            {


                fileName = ContentDispositionHeaderValue.Parse(file.ContentDisposition).FileName.Trim('"');
                var oldName = Path.GetFileName(fileName);
                //var uniqueFilename = Convert.ToString(Guid.NewGuid()); // สุ่มตัวลักษณะคำจำนวน 128 bit
                var fileExtension = Path.GetExtension(fileName); // เก็บนามสกุลไฟล์
                newFileName = seller_code + fileExtension;
                fileName = Path.Combine(_hostingEnvironment.WebRootPath, $@"data\seller\avatar") + $@"\{newFileName}";

                using (FileStream fs = System.IO.File.Create(fileName))
                {
                    file.CopyTo(fs);
                    fs.Flush();
                }
            }


            model.MP_Seller.edit_by = "";
            model.MP_Seller.edit_datetime = DateTime.Parse("1900-01-01");
            if (model.MP_Seller.edit_datetime.Year < 2000)
            {
                model.MP_Seller.edit_datetime = model.MP_Seller.edit_datetime.AddYears(543);
            }
            else if (model.MP_Seller.edit_datetime.Year > 2500)
            {
                model.MP_Seller.edit_datetime = model.MP_Seller.edit_datetime.AddYears(-543);
            }

            if (model.MP_Seller.birthday.Year < 2000)
            {
                model.MP_Seller.birthday = model.MP_Seller.birthday.AddYears(543);
            }
            else if (model.MP_Seller.birthday.Year > 2500)
            {
                model.MP_Seller.birthday = model.MP_Seller.birthday.AddYears(-543);
            }


            MP_Seller seller = new MP_Seller
            {
                seller_code = seller_code,
                username = model.MP_Seller.username,
                password = model.MP_Seller.password,
                change_password = model.MP_Seller.change_password,
                avatar = newFileName,
                shop_code = model.MP_Seller.shop_code,
                prefix_id = model.MP_Seller.prefix_id,
                firstname = model.MP_Seller.firstname,
                lastname = model.MP_Seller.lastname,
                birthday = model.MP_Seller.birthday,
                gender_id = model.MP_Seller.gender_id,
                mobile_number = model.MP_Seller.mobile_number,                
                create_by = admin_code,
                create_datetime = DateTime.Now,
                edit_by = "", //Empty default
                edit_datetime = model.MP_Seller.edit_datetime, //Empty default
                status = true
            };
            try
            {
                _db.MP_Seller.Add(seller);
                _db.SaveChanges();
            }
            catch (System.Exception)
            {

                throw;
            }

            MP_SellerPermanentAddress pm = new MP_SellerPermanentAddress
            {
                seller_code = seller_code,
                address_no = model.MP_SellerPermanentAddress.address_no,
                building = model.MP_SellerPermanentAddress.building,
                room = model.MP_SellerPermanentAddress.room,
                alley = model.MP_SellerPermanentAddress.alley,
                rood = model.MP_SellerPermanentAddress.rood,
                changwat_id = model.MP_SellerPermanentAddress.changwat_id,
                amphoe_id = model.MP_SellerPermanentAddress.amphoe_id,
                tambon_id = model.MP_SellerPermanentAddress.tambon_id,
                zip_code = model.MP_SellerPermanentAddress.zip_code,
                tel = model.MP_SellerPermanentAddress.tel,
                status = true
            };
            try
            {
                 _db.MP_SellerPermanentAddress.Add(pm);
                 _db.SaveChanges();
            }
            catch (System.Exception)
            {
                
                throw;
            }

            if(model.MP_SellerPresentAddress.sam_permanent == true){
                MP_SellerPresentAddress ps = new MP_SellerPresentAddress
            {
                seller_code = seller_code,
                address_no = model.MP_SellerPermanentAddress.address_no,
                building = model.MP_SellerPermanentAddress.building,
                room = model.MP_SellerPermanentAddress.room,
                alley = model.MP_SellerPermanentAddress.alley,
                rood = model.MP_SellerPermanentAddress.rood,
                moo = model.MP_SellerPermanentAddress.moo,
                changwat_id = model.MP_SellerPermanentAddress.changwat_id,
                amphoe_id = model.MP_SellerPermanentAddress.amphoe_id,
                tambon_id = model.MP_SellerPermanentAddress.tambon_id,
                zip_code = model.MP_SellerPermanentAddress.zip_code,
                tel = model.MP_SellerPermanentAddress.tel,
                sam_permanent = model.MP_SellerPresentAddress.sam_permanent,
                status = true
            };
            try
            {
                 _db.MP_SellerPresentAddress.Add(ps);
                 _db.SaveChanges();
            }
            catch (System.Exception)
            {
                
                throw;
            }
            }else{
                MP_SellerPresentAddress ps = new MP_SellerPresentAddress
            {
                seller_code = seller_code,
                address_no = model.MP_SellerPresentAddress.address_no,
                building = model.MP_SellerPresentAddress.building,
                room = model.MP_SellerPresentAddress.room,
                alley = model.MP_SellerPresentAddress.alley,
                rood = model.MP_SellerPresentAddress.rood,
                moo = model.MP_SellerPresentAddress.moo,
                changwat_id = model.MP_SellerPresentAddress.changwat_id,
                amphoe_id = model.MP_SellerPresentAddress.amphoe_id,
                tambon_id = model.MP_SellerPresentAddress.tambon_id,
                zip_code = model.MP_SellerPresentAddress.zip_code,
                tel = model.MP_SellerPresentAddress.tel,
                sam_permanent = model.MP_SellerPresentAddress.sam_permanent,
                status = true
            };
            try
            {
                 _db.MP_SellerPresentAddress.Add(ps);
                 _db.SaveChanges();
            }
            catch (System.Exception)
            {
                
                throw;
            }
            }

            

            //return Json("");
            //var GetSeller = _db.MP_Seller.Where(o => o.seller_code.Equals(seller_code)).FirstOrDefault();
            HttpContext.Session.SetString(SessionEditSellerCode, seller_code);
            return RedirectToAction("Saving", "Active");
        }

        [Route("/[controller]/[action]/{active}/{seller_code}")]
        [Obsolete]
        public JsonResult GetSellerTable([FromRoute] string active, [FromRoute] string seller_code)
        {
            if (active == "del" && seller_code != "empty" && seller_code != null)
            {
                var del = _db.MP_Seller.Where(s => s.seller_code.Equals(int.Parse(seller_code).ToString("0000000000"))).FirstOrDefault();
                if (del != null)
                {
                    try
                    {
                        _db.MP_Seller.Remove(del);
                        _db.SaveChanges();
                    }
                    catch (System.Exception)
                    {

                        throw;
                    }
                    if (del.avatar != null && del.avatar != "")
                    {
                        var oldPath = Path.Combine(_hostingEnvironment.WebRootPath, $@"data\seller\avatar") + $@"\{del.avatar}"; //wwwroot/img/profile
                        FileInfo fi = new FileInfo(oldPath);
                        if (fi != null)
                        {
                            System.IO.File.Delete(oldPath);
                            fi.Delete();
                        }

                    }
                }
            }
            var result = _db.MP_View_Seller.OrderBy(o => o.seller_code).ToList();
            return Json(result);
        }

        public IActionResult EditShop(string shop_code)
        {
            //string account_code = HttpContext.Session.GetString("_EditCode");

            var shopResult = _db.MP_Shop.Where(a => a.shop_code.Equals(shop_code)).FirstOrDefault();
            HttpContext.Session.SetString(SessionEditSellerCode, "");
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