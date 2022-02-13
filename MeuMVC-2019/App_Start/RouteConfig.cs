using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace MeuMVC_2019
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
                "VeiculosSalvar",
                "Veiculos/Salvar",
                new { Controller = "Veiculos", Action = "Salvar"}
                );
            routes.MapRoute(
               "VeiculosExcluir",
               "Veiculos/{id}/Excluir",
               new { Controller = "Veiculos", Action = "Excluir", id = 0 }
               );

            routes.MapRoute(
                "VeiculosAlterar",
                "Veiculos/Alterar/:id",
                new {Controller = "Veiculos", Action = "Alterar", id = 0}
                );

            routes.MapRoute(
               "Sair",
               "Sair/Logout/:id",
               new { Controller = "Sair", Action = "Logout" }
               );

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
            );
        }
    }
}
