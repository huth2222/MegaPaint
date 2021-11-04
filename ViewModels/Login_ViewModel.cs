using System.ComponentModel.DataAnnotations;

namespace MegaPaint.ViewModels
{
    public class Login_ViewModel
    {
        public string username { get; set; }
        public string password { get; set; }  
        public string msg { get; set; }   
    }
}