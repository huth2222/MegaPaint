using System;
using System.Linq;
using MegaPaint.Context;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;

namespace MegaPaint.Controllers.Entity
{
    public class TestController : Controller
    {
        private readonly ContextDB _db;
        public const string SessionEditShopCode = "_EditShopCode";

        [Obsolete]
        private readonly IHostingEnvironment _hostingEnvironment;

        [Obsolete]
        public TestController(ContextDB context, IHostingEnvironment hostingEnvironment)
        {
            _db = context;
            _hostingEnvironment = hostingEnvironment;
        }

        public IActionResult Item()
        {
            ViewBag.changwat = _db.MT_AddressChangwat.ToList();
            return View();
        }
    }
}