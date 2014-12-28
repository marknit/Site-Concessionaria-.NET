using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace NewCarMedia
{
    public partial class ViewCar : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            string strCon = ConfigurationManager.ConnectionStrings["CARMEDIAConnectionString"].ConnectionString;
            string SQL = "Select * from carros WHERE id= @id";
            string ID = Request.QueryString["id"];

            using (SqlConnection con = new SqlConnection(strCon))
            {
                using (SqlCommand cmd = new SqlCommand(SQL, con))
                {
                    con.Open();
                    if (con.State == System.Data.ConnectionState.Open)
                    {
                        cmd.Parameters.AddWithValue("@id", Convert.ToInt32(ID));
                        SqlDataReader dr = cmd.ExecuteReader();
                        if (dr.Read() == true)
                        {
                            txtDescricao.Text = dr["descricao"].ToString();
                            lblMarca.Text = dr["marca"].ToString();
                            lblAno.Text = dr["ano"].ToString();
                            lblPreco.Text = dr["preco"].ToString();
                            lblNomeCarro.Text = dr["modelo"].ToString();
                            imgFoto.ImageUrl = "img/" + dr["foto1"].ToString();
                            HyperLink1.PostBackUrl = "Interesse.aspx?Carro=" + dr["marca"].ToString() + "  " + dr["modelo"].ToString();
                        }
                    }
                }

            }

        }
    }
}