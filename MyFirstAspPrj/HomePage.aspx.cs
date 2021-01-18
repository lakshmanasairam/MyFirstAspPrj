using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Configuration;

namespace MyFirstAspPrj
{
    public partial class HomePage : System.Web.UI.Page
    {
        private SqlConnection con = null;
        private SqlCommand cmd = null;
        private DataTable dt = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["HRCon"].ConnectionString);
            cmd = new SqlCommand("Select Id,ProductName,Price,Quantity,ProductImage from Product",con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            dt = new DataTable();
            dt.Load(reader);
            Dlproduct.DataSource = dt;
            Dlproduct.DataBind();
        }
    }
}