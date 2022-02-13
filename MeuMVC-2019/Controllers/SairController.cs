using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MeuMVC_2019.Controllers
{
    public class SairController : Controller
    {
        // GET: Sair
        public ActionResult Index()
        {
            Session.Abandon();
            return RedirectToAction("Index","Login");
        }


      
    }
}