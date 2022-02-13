using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using System.Web;
using System.Web.Configuration;

namespace MeuMVC_2019.Models
{
    public class Usuario
    {
        private readonly static string _conn = WebConfigurationManager.ConnectionStrings["conn"].ConnectionString;


        public string Id { get; set; }
        public string Login { get; set; }

        public string Senha { get; set; }

        public bool Logar()
        {
            var result = false;
            var sql = "SELECT Id, Nome, Senha FROM tb_Usuario WHERE Nome = '" + this.Login +"'";

            try
            {
                using (var cn = new SqlConnection(_conn))
                {
                    cn.Open();
                    using (var cmd = new SqlCommand(sql, cn))
                    {

                        using (var dr = cmd.ExecuteReader())
                        {
                            if (dr.HasRows)
                            {
                                if (dr.Read())
                                {
                                    
                                    if (this.Senha == dr["Senha"].ToString())
                                    {
                                        result = true;
                                    }
                                    
                                }
                                
                            }

                        }
                    }
                }
            }
            catch(Exception ex)
            {
                Console.WriteLine("Falha" + ex);
            }
            return result;
        }

        
    }
}