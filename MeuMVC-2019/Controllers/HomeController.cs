using MeuMVC_2019.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MeuMVC_2019.Controllers
{
    public class HomeController : Controller
    {
        
        public ActionResult Index()
        {
           if(Session["Autorizado"] != null)
            {
                ViewBag.Usuario = "Admin";      
                return View();

            }
            else
            {
                //Response.Redirect("/Login/Index");
                //return null;
                return RedirectToAction("Index","Login");
            }
            
            
            
            

        }
       

        public ActionResult About()
        {
            ViewBag.Message = "Relação de Carros";

            if (Session["Autorizado"] != null)
            {
                var lista = Veiculos.GetCarros();
                ViewBag.Lista = lista;

                return View();

            }
            else
            {
                return RedirectToAction("Index", "Login");
            }

          
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Seus Contatos";

            if (Session["Autorizado"] != null)
            {
           

                return View();

            }
            else
            {
                return RedirectToAction("Index", "Login");
            }



           
        }

      
    }
}