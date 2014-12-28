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
   private static string strCon = ConfigurationManager.ConnectionStrings["CARMEDIAConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            //ddl.DataSource = fillddl();
           // ddl.DataTextField = "marca";
            //ddl.DataValueField = "marca";
            //ddl.DataBind();
            
            
        }
        public SqlDataReader fillddl()
        {
            string SQL = "SELECT marca FROM pecas";
            SqlDataReader dr = null;
            SqlConnection conn = new SqlConnection(strCon);

            SqlCommand cmd = new SqlCommand(SQL, conn);

            conn.Open();
            if (conn.State == System.Data.ConnectionState.Open)
            {
                dr = cmd.ExecuteReader();

            }
            return dr;
        }

}