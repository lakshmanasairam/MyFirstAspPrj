using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstAspPrj
{
    public partial class Signin_And_Login : System.Web.UI.Page
    {
        private SqlConnection con = null;
        private SqlCommand cmd = null;

        public object SSession { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["HRcon"].ConnectionString);
            cmd = new SqlCommand("usp_UserDetails", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Firstname", TxtFirstname.Text);
            cmd.Parameters.AddWithValue("@Lastname", TxtLastname.Text);
            cmd.Parameters.AddWithValue("@Userid", TxtUserid.Text);
            cmd.Parameters.AddWithValue("@password", TxtPassword.Text);
            con.Open();
            int result = cmd.ExecuteNonQuery();
            if (result > 0)
            {
                LblStatus.Text = "User Add Successfully";
            }
            cmd.Dispose();
            con.Close();
        }



        protected void BtnSubmit2_Click(object sender, EventArgs e)
        {
            //string Id = TxtId.Text;
            string Username = TxtUsername.Text;
            string passwords = TxtPasswords.Text;
            if (FormsAuthentication.Authenticate(Username, passwords))
            {
                FormsAuthentication.RedirectFromLoginPage(Username, false);
            }
            else
            {
                con = new SqlConnection(ConfigurationManager.ConnectionStrings["HRcon"].ConnectionString);
                cmd = new SqlCommand("select * from Ecemployee Where Username=@Username and passwords=@passwords", con);
                //cmd.Parameters.AddWithValue("@Id", TxtId.Text);
                cmd.Parameters.AddWithValue("@Username", TxtUsername.Text.ToLower());
                cmd.Parameters.AddWithValue("@passwords", TxtPasswords.Text);
                con.Open();
                string status = "";
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.HasRows)
                {
                    reader.Read();
                    status = reader["status"].ToString();
                    Session["on"] = TxtUsername.Text;
                    //Response.Redirect("WebEcomerce.aspx");
                }
                else
                {
                    Lbl1.Text = "Invalid Details";
                }
                if(status !=null && status=="Blocked")
                {
                    Lbl1.Text = $"{Username} userid has been blocked,kindly contact customer care";
                }
                else
                {
                    Response.Redirect("WebEcomerce.aspx");
                }
            }
        }

        protected void BtnSubmit1_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["HRcon"].ConnectionString);
            cmd = new SqlCommand("select * from UserDetails Where Userid=@Userid and password=@password", con);
            cmd.Parameters.AddWithValue("@Userid",Txtuserid1.Text.ToLower());
            cmd.Parameters.AddWithValue("@password", TxtPassword1.Text);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                Session["Userid1"] = Txtuserid1.Text;
                Response.Redirect("WebEcomerce.aspx");
            }
            else
            {
                LblAsUser.Text = "Invalid Details";
            }
            cmd.Dispose();
            con.Close();
        }
    }
}