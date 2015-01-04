using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;

namespace NewCarMedia.admin
{
    public partial class Incluir_Peca : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void brnCadastrar_Click(object sender, EventArgs e)
        {
            string strCon = ConfigurationManager.ConnectionStrings["CARMEDIAConnectionString"].ConnectionString;
            string SQL = "INSERT INTO pecas (id, nome, descricao, marca, preco, data_cadastro) VALUES(";
            SQL += "@id, @nome, @descricao, @marca, @preco, @data_cadastro)";

            using (SqlConnection con = new SqlConnection(strCon))
            {
                using (SqlCommand cmd = new SqlCommand(SQL, con))
                {
                    con.Open();
                    cmd.Parameters.AddWithValue("@id", txtId.Text);
                    cmd.Parameters.AddWithValue("@nome", txtNome.Text);
                    cmd.Parameters.AddWithValue("@descricao", txtDescricao.Text);
                    cmd.Parameters.AddWithValue("@marca", txtMarca.Text);
                    cmd.Parameters.AddWithValue("@preco", txtPreco.Text);
                    cmd.Parameters.AddWithValue("@data_cadastro", txtData.Text);

                    if (cmd.ExecuteNonQuery()>0)
                    {
                        lblMsg.Text = "Peça cadastrada com sucesso!";
                        lblMsg.ForeColor = Color.Green;
                    }
                    else
                    {
                        lblMsg.Text = "Erro ao cadastrar a peça!";
                        lblMsg.ForeColor = Color.Red;
                    }

                }

                
            }

            
        }
    }
}