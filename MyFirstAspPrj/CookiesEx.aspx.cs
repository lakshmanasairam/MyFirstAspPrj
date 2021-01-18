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
    public partial class CookiesEx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if (Request.Cookies["UserId"] != null)
                {
                    TxtUsername.Text = Request.Cookies["UserId"].Value;
                    TxtPassword.Attributes.Add("value", Request.Cookies["password"].Value);
                }
            }
        }

        protected void CmdSignin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HrCon"].ConnectionString);
            SqlCommand cmd = new SqlCommand("select * from UserDetails Where Userid=@Userid and Password=@Password", con);
            cmd.Parameters.AddWithValue("@Userid", TxtUsername.Text.ToLower());
            cmd.Parameters.AddWithValue("@password", TxtPassword.Text);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                Session["Userid"] = TxtUsername.Text;
                Response.Redirect("ViewStateExample.aspx");
            }
            if(ChkRememberme.Checked)
            {
                Response.Cookies.Add(new HttpCookie("Userid", TxtUsername.Text));
                Response.Cookies.Add(new HttpCookie("password", TxtPassword.Text));
                Response.Cookies["Userid"].Expires = DateTime.Now.AddDays(2);
                Response.Cookies["password"].Expires = DateTime.Now.AddDays(2);
            }
            else
            {
                if(Request.Cookies["Userid"]!=null && Request.Cookies["password"] !=null)
                {
                    Response.Cookies["Userid"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["password"].Expires = DateTime.Now.AddDays(-1);
                }
            }
        }
    }
}