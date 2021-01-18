using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace MyFirstAspPrj
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            Application["UserCount"] = 0;
            Application["statusMessage"] = "Server Maintanence";
        }

        protected void Application_End(object sender, EventArgs e)
        {
            Application["UserCount"] = null;
            Session.Abandon();
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Session ["Userid1"] = null;
            Session["on"] = null;
            
        }

        protected void Session_End(object sender, EventArgs e)
        {
            Session["Userid1"] = null;
            Session["on"] = null;
            
        }
    }
}