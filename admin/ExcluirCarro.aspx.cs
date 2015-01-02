using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewCarMedia.admin
{
    public partial class ExcluirCarro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblCodigo.Text = Request.QueryString["id"];

        }

        protected void btnExcluir_Click(object sender, EventArgs e)
        {
            string strCon = ConfigurationManager.ConnectionStrings["CARMEDIAConnectionString"].ConnectionString;
            string SQL = "DELETE FROM carros WHERE id = @id";

            SqlConnection con = new SqlConnection(strCon);

            SqlCommand cmd = new SqlCommand(SQL, con);
            cmd.Parameters.AddWithValue("@id", Convert.ToInt32(Request.QueryString["id"]));

            if (con.State == System.Data.ConnectionState.Closed)
            {
                con.Open();
                cmd.ExecuteNonQuery();

            }
        }
    }
}