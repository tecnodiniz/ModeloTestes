using MeuMVC_2019.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MeuMVC_2019.Controllers
{
    public class VeiculosController : Controller
    {
        // GET: Veiculos
        public ActionResult Adicionar()
        {
            if (Session["Autorizado"] != null)
            {
                ViewBag.Usuario = "Admin";
                return View();

            }
            else
            {
                Response.Redirect("/Login/Index");
                return null;
            }

        }

        [HttpPost]
        public void Salvar()
        {
            var veiculo = new Veiculos();
            veiculo.Id = Convert.ToInt32("0" + Request["id"]);
            veiculo.Nome = Request["nome"];
            veiculo.Modelo = Request["modelo"];
            veiculo.Ano = Convert.ToInt16(Request["fabricacao"]);
            veiculo.Fabricacao = Convert.ToInt16(Request["fabricacao"]);
            veiculo.Cor = Request["cor"];
            veiculo.Combustivel = Convert.ToByte(Request["combustivel"]);
            veiculo.Automatico = false;
            veiculo.Valor = Convert.ToDecimal(Request["valor"]);
            veiculo.Ativo = true;

            veiculo.Salvar();

            Response.Redirect("/Home/About");

        }

        public void Excluir(int id)
        {
            var veiculo = new Veiculos();
            veiculo.Id = id;

            veiculo.Excluir();

            Response.Redirect("/Home/About");


        }

       
        public ActionResult Alterar(int id)
        {
          
            if (Session["Autorizado"] != null)
            {
                
                var veiculo = new Veiculos();
                veiculo.GetVeiculo(id);
                ViewBag.Veiculo = veiculo;
                return View();

            }
            else
            {
                Response.Redirect("/Login/Index");
                return null;
            }
           

            
          
        }
    }
}