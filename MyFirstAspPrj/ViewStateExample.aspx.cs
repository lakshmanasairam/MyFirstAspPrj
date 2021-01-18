using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstAspPrj
{
    public partial class ViewStateExample : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            { 
                if(Session["Userid"]!=null)
                {
                    Lbl1.Text = "welcome" + Session["Userid"].ToString();
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HRCon"].ConnectionString);
                    SqlCommand cmd = new SqlCommand("select FirstName,LastName from UserDetails where UserId=@UserId",con);
                    cmd.Parameters.AddWithValue("@Userid", Session["Userid"].ToString());
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    reader.Read();
                    string FirstName = reader["FirstName"].ToString();
                    string LastName = reader["Lastname"].ToString();
                    //string Firstname = (string)cmd.ExecuteReader();//Retrive First Column,Row
                    Lbl2.Text = "your Name: "+FirstName+" "+LastName;
                    reader.Close();
                    cmd.Dispose();
                }
                else
                {
                    Response.Redirect("CookiesEx.aspx");
                }
            }
        }

        protected void CmdSubmit_Click(object sender, EventArgs e)
        {
            Lbl1.Text = "Application";
            Lbl2.Text = "Session";
        }

        protected void CmdChange_Click(object sender, EventArgs e)
        {
            Response.Redirect("QueryStringExample.aspx?Name=" + TxtName.Text + "&City=Chennai");
        }
    }
}