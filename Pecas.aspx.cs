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
    public partial class Pecas : System.Web.UI.Page
    {
        private static string strCon = ConfigurationManager.ConnectionStrings["CARMEDIAConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
          if(!Page.IsPostBack)
          {
            ddl.DataSource = fillddl();
            ddl.DataTextField = "marca";
            ddl.DataValueField = "marca";
            ddl.DataBind();

            ddl.Items.Insert(0, new ListItem("-- Todas as marcas --"));
          }
            dataPecas.DataSource = fullPecas();
            dataPecas.DataBind();

           
            

        }
        public SqlDataReader fillddl()
        {
            string SQL = "SELECT DISTINCT marca FROM pecas";
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

        public SqlDataReader fullPecas()
        {
            string SQL = "SELECT * FROM pecas";
            SqlDataReader dr = null;
            SqlConnection conn = new SqlConnection(strCon);

            SqlCommand cmd = new SqlCommand();

            if (!ddl.Text.Equals("-- Todas as marcas --"))
            {
                SQL += " WHERE marca = @marca";
                cmd.Parameters.AddWithValue("@marca", ddl.Text);

            }
            else
            {
                SQL = "SELECT * FROM pecas";
            }

            cmd.Connection = conn;
            cmd.CommandText = SQL;

            conn.Open();
            if (conn.State == System.Data.ConnectionState.Open)
            {
                dr = cmd.ExecuteReader();

            }

            return dr;
        }
       
    }
}

