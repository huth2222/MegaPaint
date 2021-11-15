using System;
using System.Linq;
using MegaPaint.Context;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;

namespace MegaPaint.Controllers.Entity
{
    public class TestingController : Controller
    {
        private readonly ContextDB _db;
        public const string SessionEditShopCode = "_EditShopCode";

        [Obsolete]
        private readonly IHostingEnvironment _hostingEnvironment;

        [Obsolete]
        public TestingController(ContextDB context, IHostingEnvironment hostingEnvironment)
        {
            _db = context;
            _hostingEnvironment = hostingEnvironment;
        }

        public IActionResult Item()
        {
            return View();
        }
    }
}