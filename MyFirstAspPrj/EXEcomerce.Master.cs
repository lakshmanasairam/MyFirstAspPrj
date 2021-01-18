using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstAspPrj
{
    public partial class EXEcomerce : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["on"] != null)
            {
                AddItem.Visible = true;
                BtnLogout.Visible = true;
                BtnLogin.Visible = false;
                LblStatus.Text = Session["on"].ToString();
            }
            if(Session["Userid1"]!=null)
            {
                BtnLogout.Visible = true;
                BtnLogin.Visible = false;
                LblStatus.Text = Session["Userid1"].ToString();
            }

        }

        protected void BtnSearch_Click(object sender, EventArgs e)
        {
            Response.Redirect("Search.aspx?Id=" + TxtSearch.Text);
        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("SigninAndLogin.aspx");
        }

        protected void BtnLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Response.Redirect("WebEcomerce.aspx");
        }

        protected void BtnMobile_Click(object sender, EventArgs e)
        {
            Response.Redirect("Category.aspx");
        }

        protected void BtnLaptop_Click(object sender, EventArgs e)
        {
            Response.Redirect("Laptop.aspx");
        }
    }
}