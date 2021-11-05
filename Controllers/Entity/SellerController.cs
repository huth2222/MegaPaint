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
                moo = model.MP_SellerPermanentAddress.moo,
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

            if (model.MP_SellerPresentAddress.sam_permanent == true)
            {
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
            }
            else
            {
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

        public IActionResult EditSeller(string seller_code)
        {
            var GetSeller = _db.MP_Seller.Where(s => s.seller_code.Equals(seller_code)).FirstOrDefault();
            Seller_ViewModel mainView = new Seller_ViewModel();
            mainView.MT_Gender = _db.MT_Gender.ToList();
            mainView.MT_Prefix = _db.MT_Prefix.ToList();
            mainView.MP_View_Shop = _db.MP_View_Shop.ToList();

            var GetPm = _db.MP_SellerPermanentAddress.Where(pm => pm.seller_code.Equals(seller_code)).FirstOrDefault();
            var GetPs = _db.MP_SellerPresentAddress.Where(ps => ps.seller_code.Equals(seller_code)).FirstOrDefault();

            if (GetPm != null)
            {
                ViewBag.PmChangwat = _db.MT_AddressChangwat.ToList();
                ViewBag.PmAmphoe = _db.MT_AddressAmphoe.Where(ap => ap.changwat_id.Equals(GetPm.changwat_id)).ToList();
                ViewBag.PmTambon = _db.MT_AddressTambon.Where(tb => tb.amphoe_id.Equals(GetPm.amphoe_id)).ToList();
            }
            else
            {
                ViewBag.PmChangwat = "";
                ViewBag.PmAmphoe = "";
                ViewBag.PmTambon = "";
            }


            if (GetPs != null)
            {
                ViewBag.PsChangwat = _db.MT_AddressChangwat.ToList();
                ViewBag.PsAmphoe = _db.MT_AddressAmphoe.Where(ap => ap.changwat_id.Equals(GetPs.changwat_id)).ToList();
                ViewBag.PsTambon = _db.MT_AddressTambon.Where(tb => tb.amphoe_id.Equals(GetPs.amphoe_id)).ToList();
            }
            else
            {
                ViewBag.PsChangwat = "";
                ViewBag.PsAmphoe = "";
                ViewBag.PsTambon = "";
            }


            if (GetSeller != null)
            {
                mainView.MP_Seller = GetSeller;
                mainView.MP_SellerPermanentAddress = GetPm;
                mainView.MP_SellerPresentAddress = GetPs;
                HttpContext.Session.SetString(SessionEditSellerCode, seller_code);
            }
            else
            {
                HttpContext.Session.SetString(SessionEditSellerCode, "empty");
            }

            return View(mainView);
        }

        [HttpPost]
        [Obsolete]
        public IActionResult EditSeller([FromForm] Seller_ViewModel model, IFormFile file)
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


            if (model.MP_Seller.birthday.Year < 2000)
            {
                model.MP_Seller.birthday = model.MP_Seller.birthday.AddYears(543);
            }
            else if (model.MP_Seller.birthday.Year > 2500)
            {
                model.MP_Seller.birthday = model.MP_Seller.birthday.AddYears(-543);
            }


            var FindSeller = _db.MP_Seller.Where(s => s.seller_code.Equals(model.MP_Seller.seller_code)).FirstOrDefault();
            if (model.MP_Seller.username == null)
            {
                model.MP_Seller.username = FindSeller.username;
            }
            if (model.MP_Seller.password == null)
            {
                model.MP_Seller.password = FindSeller.password;
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
                newFileName = model.MP_Seller.seller_code + fileExtension;
                inputName = newFileName;
                fileName = Path.Combine(_hostingEnvironment.WebRootPath, $@"data\seller\avatar") + $@"\{newFileName}";


                using (FileStream fs = System.IO.File.Create(fileName))
                {
                    file.CopyTo(fs);
                    fs.Flush();
                }
            }

            if (inputName == "" && model.MP_Seller.avatar != null)
            {
                inputName = model.MP_Seller.avatar;
            }
            else if (inputName == "" && model.MP_Seller.avatar == null && (FindSeller.avatar != "" && FindSeller.avatar != null))
            {
                var oldPath = Path.Combine(_hostingEnvironment.WebRootPath, $@"data\seller\avatar") + $@"\{FindSeller.avatar}"; //wwwroot/img/profile
                FileInfo fi = new FileInfo(oldPath);
                if (fi != null)
                {
                    System.IO.File.Delete(oldPath);
                    fi.Delete();
                }
            }


            FindSeller.seller_code = model.MP_Seller.seller_code;
            FindSeller.username = model.MP_Seller.username.Trim();
            FindSeller.password = model.MP_Seller.password.Trim();
            FindSeller.change_password = model.MP_Seller.change_password;
            FindSeller.avatar = inputName;
            FindSeller.shop_code = model.MP_Seller.shop_code;
            FindSeller.prefix_id = model.MP_Seller.prefix_id;
            FindSeller.firstname = model.MP_Seller.firstname.Trim();
            FindSeller.lastname = model.MP_Seller.lastname.Trim();
            FindSeller.birthday = model.MP_Seller.birthday;
            FindSeller.gender_id = model.MP_Seller.gender_id;
            FindSeller.mobile_number = model.MP_Seller.mobile_number.Trim();
            FindSeller.edit_by = admin_code;
            FindSeller.edit_datetime = DateTime.Now;
            try
            {
                _db.SaveChanges();
            }
            catch (System.Exception)
            {

                throw;
            }
            var FindPm = _db.MP_SellerPermanentAddress.Where(pm => pm.seller_code.Equals(model.MP_Seller.seller_code)).FirstOrDefault();
            FindPm.seller_code = model.MP_Seller.seller_code;
            FindPm.address_no = model.MP_SellerPermanentAddress.address_no;
            FindPm.building = model.MP_SellerPermanentAddress.building;
            FindPm.room = model.MP_SellerPermanentAddress.room;
            FindPm.alley = model.MP_SellerPermanentAddress.alley;
            FindPm.rood = model.MP_SellerPermanentAddress.rood;
            FindPm.moo = model.MP_SellerPermanentAddress.moo;
            FindPm.changwat_id = model.MP_SellerPermanentAddress.changwat_id;
            FindPm.amphoe_id = model.MP_SellerPermanentAddress.amphoe_id;
            FindPm.tambon_id = model.MP_SellerPermanentAddress.tambon_id;
            FindPm.zip_code = model.MP_SellerPermanentAddress.zip_code;
            //FindPm.tel = model.MP_SellerPermanentAddress.tel.Trim();
            try
            {
                _db.SaveChanges();
            }
            catch (System.Exception)
            {

                throw;
            }

            var FindPs = _db.MP_SellerPresentAddress.Where(ps => ps.seller_code.Equals(model.MP_Seller.seller_code)).FirstOrDefault();
            if (model.MP_SellerPresentAddress.sam_permanent == true)
            {
                FindPs.seller_code = model.MP_Seller.seller_code;
                FindPs.address_no = model.MP_SellerPermanentAddress.address_no;
                FindPs.building = model.MP_SellerPermanentAddress.building;
                FindPs.room = model.MP_SellerPermanentAddress.room;
                FindPs.alley = model.MP_SellerPermanentAddress.alley;
                FindPs.rood = model.MP_SellerPermanentAddress.rood;
                FindPs.moo = model.MP_SellerPermanentAddress.moo;
                FindPs.changwat_id = model.MP_SellerPermanentAddress.changwat_id;
                FindPs.amphoe_id = model.MP_SellerPermanentAddress.amphoe_id;
                FindPs.tambon_id = model.MP_SellerPermanentAddress.tambon_id;
                FindPs.zip_code = model.MP_SellerPermanentAddress.zip_code;
                FindPs.tel = model.MP_SellerPermanentAddress.tel;
                FindPs.sam_permanent = true;
            }
            else
            {
                FindPs.seller_code = model.MP_Seller.seller_code;
                FindPs.address_no = model.MP_SellerPresentAddress.address_no;
                FindPs.building = model.MP_SellerPresentAddress.building;
                FindPs.room = model.MP_SellerPresentAddress.room;
                FindPs.alley = model.MP_SellerPresentAddress.alley;
                FindPs.rood = model.MP_SellerPresentAddress.rood;
                FindPs.moo = model.MP_SellerPresentAddress.moo;
                FindPs.changwat_id = model.MP_SellerPresentAddress.changwat_id;
                FindPs.amphoe_id = model.MP_SellerPresentAddress.amphoe_id;
                FindPs.tambon_id = model.MP_SellerPresentAddress.tambon_id;
                FindPs.zip_code = model.MP_SellerPresentAddress.zip_code;
                FindPs.tel = model.MP_SellerPresentAddress.tel;
                FindPs.sam_permanent = false;
            }

            try
            {
                _db.SaveChanges();
            }
            catch (System.Exception)
            {

                throw;
            }


            // ทำต่อ -->>

            //return Json("");
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



    }
}