using Microsoft.AspNetCore.Mvc;

namespace MegaPaint.Controllers
{
    public class ActiveController : Controller
    {
        public IActionResult Saving()
        {
            return View();
        }
    }
}