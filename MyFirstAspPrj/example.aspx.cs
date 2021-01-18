using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstAspPrj
{
    public partial class example : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CmdSignIn_Click(object sender, EventArgs e)
        {
            string emailId = "admin@gmail.com", password = "admin@123";
            if(TxtEmailid.Text==emailId && TxtPassword.Text==password)
            {
                LblMessage.Text = "success";
                LblMessage.ForeColor = System.Drawing.Color.Blue;
            }
            else
            {
                LblMessage.Text = "Invalid Email Id or Password";
                LblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}