using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Http.Headers;
using MegaPaint.Context;
using MegaPaint.Models;
using MegaPaint.ViewModels;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Hosting;

namespace MegaPaint.Controllers
{
    public class AdminController : Controller
    {
        private readonly ContextDB _db;
        public const string SessionEditAdminCode = "_EditAdminCode";

        [Obsolete]
        private readonly IHostingEnvironment _hostingEnvironment;

        [Obsolete]
        public AdminController(ContextDB context, IHostingEnvironment hostingEnvironment)
        {
            _db = context;
            _hostingEnvironment = hostingEnvironment;
        }

        public IActionResult Index(string page)
        {
            if (page != null)
            {
                ViewBag.Page = page;
            }
            else
            {
                ViewBag.Page = "";
            }
            return View();
        }

        public IActionResult AddAdminProfile()
        {
            AdminProfile_ViewModel mainView = new AdminProfile_ViewModel();
            mainView.MT_Prefix = _db.MT_Prefix.ToList();
            mainView.MT_Gender = _db.MT_Gender.ToList();
            return View(mainView);
        }

        [Route("/[controller]/[action]/{username}")]
        public JsonResult GetUsername([FromRoute] string username)
        {
            var GetUsername = _db.MP_Admin.Where(a => a.username.Equals(username)).FirstOrDefault();
            string result = "";
            if (GetUsername != null)
            {
                result = "Username ซ้ำ";
            }
            return Json(result);
        }

        [HttpPost]
        [Obsolete]
        public IActionResult AddAdminProfile([FromForm] AdminProfile_ViewModel model, IFormFile file)
        {
            string admin_code = HttpContext.Session.GetString("_AdminCode");

            if (model.MP_Admin.mobile_number != null)
            {
                model.MP_Admin.mobile_number = model.MP_Admin.mobile_number.Replace("-", "");
            }
            else
            {
                model.MP_Admin.mobile_number = "";
            }

            AdminProfile_ViewModel model1 = model;
            if (model1.MP_Admin.birthday.Year <= 1900)
            {
                model.MP_Admin.birthday = DateTime.Parse("1900-01-01");
            }


            var FindAdmin = _db.MP_Admin.OrderByDescending(o => o.admin_code).ToList();
            int default_code = 0;
            string account_code = "";
            if (FindAdmin.Count > 0)
            {
                default_code = int.Parse(FindAdmin[0].admin_code) + 1;
                account_code = default_code.ToString("0000000000");
            }
            else
            {
                account_code = "0000000001";
            }

            string fileName = string.Empty;
            string newFileName = string.Empty;
            if (file != null)
            {


                fileName = ContentDispositionHeaderValue.Parse(file.ContentDisposition).FileName.Trim('"');
                var oldName = Path.GetFileName(fileName);
                //var uniqueFilename = Convert.ToString(Guid.NewGuid()); // สุ่มตัวลักษณะคำจำนวน 128 bit
                var fileExtension = Path.GetExtension(fileName); // เก็บนามสกุลไฟล์
                newFileName = account_code + fileExtension;
                fileName = Path.Combine(_hostingEnvironment.WebRootPath, $@"data\admin\profile") + $@"\{newFileName}";

                using (FileStream fs = System.IO.File.Create(fileName))
                {
                    file.CopyTo(fs);
                    fs.Flush();
                }
            }

            if (model.MP_Admin.birthday.Year < 2000)
            {
                model.MP_Admin.birthday = model.MP_Admin.birthday.AddYears(543);
            }
            else if (model.MP_Admin.birthday.Year > 2500)
            {
                model.MP_Admin.birthday = model.MP_Admin.birthday.AddYears(-543);
            }

            model.MP_Admin.edit_by = "";
            model.MP_Admin.edit_datetime = DateTime.Parse("1900-01-01");
            if (model.MP_Admin.edit_datetime.Year < 2000)
            {
                model.MP_Admin.edit_datetime = model.MP_Admin.edit_datetime.AddYears(543);
            }
            else if (model.MP_Admin.edit_datetime.Year > 2500)
            {
                model.MP_Admin.edit_datetime = model.MP_Admin.edit_datetime.AddYears(-543);
            }


            MP_Admin admin = new MP_Admin
            {
                admin_code = account_code,
                prefix_id = model.MP_Admin.prefix_id,
                firstname = model.MP_Admin.firstname,
                lastname = model.MP_Admin.lastname,
                avatar = newFileName,
                birthday = model.MP_Admin.birthday,
                mobile_number = model.MP_Admin.mobile_number,
                gender_id = model.MP_Admin.gender_id,
                username = model.MP_Admin.username,
                password = model.MP_Admin.password,
                change_password = model.MP_Admin.change_password,
                create_by = admin_code,
                create_datetime = DateTime.Now,
                edit_by = model.MP_Admin.edit_by, //Empty default
                edit_datetime = model.MP_Admin.edit_datetime, //Empty default
                level_id = 2,
                status = true
            };
            try
            {
                _db.MP_Admin.Add(admin);
                _db.SaveChanges();
            }
            catch (System.Exception)
            {

                throw;
            }

            //return Json("");
            var GetAccount = _db.MP_Admin.OrderByDescending(o => o.admin_code).FirstOrDefault();
            HttpContext.Session.SetString(SessionEditAdminCode, GetAccount.admin_code);
            return RedirectToAction("Saving", "Active");
        }

        public IActionResult Saving()
        {
            return View();
        }

        // [Route("[controller]/[action]/{account_code}")]
        // public IActionResult GetAdminCodeEdit([FromRoute]string account_code)
        // {
        //     HttpContext.Session.SetString(SessionEditCode, account_code);
        //     return RedirectToAction("EditAdminProfile","Admin");
        // }

        public IActionResult EditAdminProfile(string account_code)
        {
            //string account_code = HttpContext.Session.GetString("_EditCode");

            var accountResult = _db.MP_Admin.Where(a => a.admin_code.Equals(account_code)).FirstOrDefault();
            HttpContext.Session.SetString(SessionEditAdminCode, "");
            AdminProfile_ViewModel mainView = new AdminProfile_ViewModel();
            mainView.MT_Prefix = _db.MT_Prefix.ToList();
            mainView.MT_Gender = _db.MT_Gender.ToList();

            if (accountResult != null)
            {
                mainView.MP_Admin = accountResult;
                ViewBag.account = accountResult.admin_code;
            }
            else
            {
                ViewBag.account = "empty";
            }

            return View(mainView);
        }

        [HttpPost]
        [Obsolete]
        public IActionResult EditAdminProfile([FromForm] AdminProfile_ViewModel model, IFormFile file)
        {
            string adminCode = HttpContext.Session.GetString("_AdminCode");
            var account = _db.MP_Admin.Where(a => a.admin_code.Equals(model.MP_Admin.admin_code)).FirstOrDefault();

            if (model.MP_Admin.mobile_number != null)
            {
                model.MP_Admin.mobile_number = model.MP_Admin.mobile_number.Replace("-", "");
            }
            else
            {
                model.MP_Admin.mobile_number = "";
            }

            AdminProfile_ViewModel model1 = model;
            if (model1.MP_Admin.birthday.Year <= 1900)
            {
                model.MP_Admin.birthday = DateTime.Parse("1900-01-01");
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
                newFileName = model.MP_Admin.admin_code + fileExtension;
                inputName = newFileName;
                fileName = Path.Combine(_hostingEnvironment.WebRootPath, $@"data\admin\profile") + $@"\{newFileName}";


                using (FileStream fs = System.IO.File.Create(fileName))
                {
                    file.CopyTo(fs);
                    fs.Flush();
                }
            }

            if (inputName == "" && (model.MP_Admin.avatar != "" && model.MP_Admin.avatar != null))
            {
                inputName = model.MP_Admin.avatar;
            }
            else if (inputName == "" && (model.MP_Admin.avatar == "" || model.MP_Admin.avatar == null) && (account.avatar != "" && account.avatar != null))
            {
                var oldPath = Path.Combine(_hostingEnvironment.WebRootPath, $@"data\admin\profile") + $@"\{account.avatar}"; //wwwroot/img/profile
                FileInfo fi = new FileInfo(oldPath);
                if (fi != null)
                {
                    System.IO.File.Delete(oldPath);
                    fi.Delete();
                }
            }

            if (model.MP_Admin.birthday.Year < 2000)
            {
                model.MP_Admin.birthday = model.MP_Admin.birthday.AddYears(543);
            }
            else if (model.MP_Admin.birthday.Year > 2500)
            {
                model.MP_Admin.birthday = model.MP_Admin.birthday.AddYears(-543);
            }

            model.MP_Admin.edit_by = "";
            model.MP_Admin.edit_datetime = DateTime.Parse("1900-01-01");
            if (model.MP_Admin.edit_datetime.Year < 2000)
            {
                model.MP_Admin.edit_datetime = model.MP_Admin.edit_datetime.AddYears(543);
            }
            else if (model.MP_Admin.edit_datetime.Year > 2500)
            {
                model.MP_Admin.edit_datetime = model.MP_Admin.edit_datetime.AddYears(-543);
            }

            if (model.MP_Admin.password == null)
            {
                model.MP_Admin.password = account.password;
            }



            account.prefix_id = model.MP_Admin.prefix_id;
            account.firstname = model.MP_Admin.firstname;
            account.lastname = model.MP_Admin.lastname;
            account.avatar = inputName;
            account.birthday = model.MP_Admin.birthday;
            account.mobile_number = model.MP_Admin.mobile_number.Trim();
            account.gender_id = model.MP_Admin.gender_id;
            account.username = model.MP_Admin.username;
            account.password = model.MP_Admin.password;
            account.change_password = model.MP_Admin.change_password;
            account.edit_by = adminCode;
            account.edit_datetime = model.MP_Admin.edit_datetime;
            account.level_id = 2;
            account.status = true;
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

        public IActionResult EditShop()
        {
            return View();
        }

        public IActionResult Test()
        {
            return View();
        }        

        public IActionResult AddShop()
        {
            ViewBag.changwat = _db.MT_AddressChangwat.ToList();
            return View();
        }

        [Route("/[controller]/[action]/{active}/{admin_code}")]
        [Obsolete]
        public JsonResult GetAdminTable([FromRoute] string active, [FromRoute] string admin_code)
        {
            if (active == "del" && admin_code != "empty" && admin_code != null)
            {
                var del = _db.MP_Admin.Where(d => d.admin_code.Equals(int.Parse(admin_code).ToString("0000000000"))).FirstOrDefault();
                if (del != null)
                {
                    try
                    {
                        _db.MP_Admin.Remove(del);
                        _db.SaveChanges();
                    }
                    catch (System.Exception)
                    {

                        throw;
                    }
                    if (del.avatar != null && del.avatar != "")
                    {
                        var oldPath = Path.Combine(_hostingEnvironment.WebRootPath, $@"data\admin\profile") + $@"\{del.avatar}"; //wwwroot/img/profile
                        FileInfo fi = new FileInfo(oldPath);
                        if (fi != null)
                        {
                            System.IO.File.Delete(oldPath);
                            fi.Delete();
                        }
                    }
                }
            }
            HttpContext.Session.SetString(SessionEditAdminCode, "");
            var result = _db.MP_View_Admin.OrderBy(o => o.level_id).ToList();
            return Json(result);
        }
    }
}