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
    public partial class Carros : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string strCon = ConfigurationManager.ConnectionStrings["CARMEDIAConnectionString"].ConnectionString;
            string SQL = "SELECT * FROM carros";

            SqlConnection con = new SqlConnection(strCon);

            SqlCommand cmd = new SqlCommand(SQL, con);

            if(con.State == System.Data.ConnectionState.Closed)
            {
                con.Open();

                grdDados.DataSource = cmd.ExecuteReader();
                grdDados.DataBind();
            }
        }
    }
}