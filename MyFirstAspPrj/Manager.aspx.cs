using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MyFirstAspPrj.sairam;

namespace MyFirstAspPrj
{
    public partial class Manager : System.Web.UI.Page
    {
        private SqlConnection con = null;
        private SqlCommand cmd = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["HRCon"].ConnectionString);
            cmd = new SqlCommand("select Id,Username,Passwords from Ecemployee", con);
            cmd.CommandType = CommandType.Text;
            con.Open();
            SqlDataReader rd = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            GridView1.DataSource = rd;
            GridView1.DataBind();

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["HRCon"].ConnectionString);
            cmd = new SqlCommand("Update Ecemployee Set status='Blocked' Where Id=@Id", con);
            String Id = GridView1.Rows[e.RowIndex].Cells[1].Text;
            cmd.Parameters.AddWithValue("@Id",Id);
            con.Open();
            int result = cmd.ExecuteNonQuery();
            if (result > 0)
            {
                Lbl1.Text = "User Has been Blocked ";
            }
        }
    }
}