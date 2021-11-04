using System.Linq;
using MegaPaint.Context;
using Microsoft.AspNetCore.Mvc;

namespace MegaPaint.Controllers
{
    public class APIController : Controller
    {
        private readonly ContextDB _db;
        public APIController(ContextDB context)
        {
            _db = context;
        }

        [Route("/[controller]/[action]/{changwat_id}")]
        public JsonResult GetAmphoe([FromRoute] string changwat_id)
        {
            var result = _db.MT_AddressAmphoe.Where(a => a.changwat_id.Equals(changwat_id)).ToList();
            return Json(result);
        }

        [Route("/[controller]/[action]/{amphoe_id}")]
        public JsonResult GetTambon([FromRoute] string amphoe_id)
        {
            var result = _db.MT_AddressTambon.Where(a => a.amphoe_id.Equals(amphoe_id)).ToList();
            return Json(result);
        }

        [Route("/[controller]/[action]/{tambon_id}")]
        public JsonResult GetZipCode([FromRoute] string tambon_id)
        {
            var result = _db.MT_AddressTambon.Where(a => a.tambon_id.Equals(tambon_id)).FirstOrDefault();
            return Json(result);
        }
        
    }
}