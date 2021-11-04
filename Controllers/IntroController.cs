using System.Linq;
using MegaPaint.Context;
using MegaPaint.Models;
using MegaPaint.ViewModels;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace MegaPaint.Controllers
{
    public class IntroController : Controller
    {
        private readonly ContextDB _db;
        public const string SessionAdminCode = "_AdminCode";
        public const string SessionLevelID = "_LevelID";
        public const string SessionFullname = "_Fullname";
        public const string SessionAvatar = "_Avatar";
        public IntroController(ContextDB context)
        {
            _db = context;
        }

        public IActionResult Login()
        {
            HttpContext.Session.Clear();
            return View();
        }

        [HttpPost]
        public IActionResult Login([FromForm] Login_ViewModel model)
        {
            var result = _db.MP_View_Admin.Where(log => log.username.Equals(model.username) && log.password.Equals(model.password)).FirstOrDefault();
            if(result != null){
                HttpContext.Session.SetString(SessionAdminCode, result.admin_code);
                HttpContext.Session.SetString(SessionLevelID, result.level_id.ToString());
                HttpContext.Session.SetString(SessionFullname, result.prefix_name_th + result.firstname + " " + result.lastname);
                HttpContext.Session.SetString(SessionAvatar, result.avatar);
                if(result.change_password == true){
                    return RedirectToAction("ChangePassword","Intro");
                }else{
                    return RedirectToAction("Index","Admin");
                }
                
            }else{
                ModelState.AddModelError("msg", "Username หรือ Password ไม่ถูกต้อง");
                return View();
            }
        }

        public IActionResult ChangePassword()
        {
            string adminCode = HttpContext.Session.GetString("_AdminCode");
            if(adminCode == null){
                return RedirectToAction("Login","Intro");
            }else{
                MP_Admin admin = new MP_Admin();
                admin = _db.MP_Admin.Where(a => a.admin_code.Equals(adminCode)).FirstOrDefault();
                return View(admin);
            }
        }

        [HttpPost]
        public IActionResult ChangePassword(MP_Admin model)
        {
            var result = _db.MP_Admin.Where(a => a.admin_code.Equals(model.admin_code)).FirstOrDefault();
            result.password = model.password;
            result.change_password = false;
            _db.SaveChanges();
            return RedirectToAction("Index","Admin");
        }
    }
}