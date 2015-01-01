using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewCarMedia.admin
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }    
        protected void btnLogar_Click(object sender, EventArgs e)
        {
             string strCon = ConfigurationManager.ConnectionStrings["CARMEDIAConnectionString"].ConnectionString;
            string SQL = "Select * from usuarios WHERE login = @login and senha = @senha";
            

            using (SqlConnection con = new SqlConnection(strCon))
            {
                using (SqlCommand cmd = new SqlCommand(SQL, con))
                 {
                    con.Open();
                    if (con.State == System.Data.ConnectionState.Open)
                    {
                        cmd.Parameters.AddWithValue("@login", txtLogin);
                        cmd.Parameters.AddWithValue("@senha", txtSenha);

                        SqlDataReader dr = cmd.ExecuteReader();
                        if (dr.Read())
                        {
                            FormsAuthentication.RedirectFromLoginPage(dr["nome"].ToString(), false);
                           

                        }
                    }
               }
            }
        }
        }

    
}