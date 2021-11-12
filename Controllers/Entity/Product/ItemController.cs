using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using MegaPaint.Context;
using MegaPaint.Models;
using MegaPaint.ViewModels.Entity.Product.Item;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace MegaPaint.Controllers.Entity.Product
{
    public class ItemController : Controller
    {
        private readonly ContextDB _db;
        public const string SessionEditCode = "_EditCode";
        public const string SessionPageActive = "_PageActive";

        [Obsolete]
        private readonly IHostingEnvironment _hostingEnvironment;

        [Obsolete]
        public ItemController(ContextDB context, IHostingEnvironment hostingEnvironment)
        {
            _db = context;
            _hostingEnvironment = hostingEnvironment;
        }

        public IActionResult Index()
        {
            Product_ViewModel ViewModel = new Product_ViewModel();
            ViewModel.MP_ProductCategory = _db.MP_ProductCategory.OrderBy(o => o.category_code).ToList();
            ViewModel.MP_ProductGroup = _db.MP_ProductGroup.OrderBy(o => o.group_code).ToList();
            return View(ViewModel);
        }
    }
}