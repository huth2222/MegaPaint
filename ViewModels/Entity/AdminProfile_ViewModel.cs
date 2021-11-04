using System.Collections.Generic;
using MegaPaint.Models;

namespace MegaPaint.ViewModels
{
    public class AdminProfile_ViewModel
    {
        public List<MT_Prefix> MT_Prefix { get; set; }
        public List<MT_Gender> MT_Gender { get; set; }
        public MP_Admin MP_Admin { get; set; }
    }
}