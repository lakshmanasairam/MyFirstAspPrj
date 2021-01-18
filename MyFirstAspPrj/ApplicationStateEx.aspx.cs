using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstAspPrj
{
    public partial class ApplicationStateEx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if(Session["Userid"] !=null)
                LblWelcome.Text = "welcome" + Session["UserId"].ToString();
                LblStatus.Text = "No users Online:" + Application["usercount"].ToString();
                LblStatusMessage.Text = Application["statusMessage"].ToString();
            }
            else
            {
                Response.Redirect("CookiesEx.aspx");
            }
        }
    }
}