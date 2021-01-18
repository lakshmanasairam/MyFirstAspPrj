using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstAspPrj
{
    public partial class Viewform : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CmdChange_Click(object sender, EventArgs e)
        {
            Lbl1.Text = "Application";
            Lbl2.Text = "Session";
            
        }

        protected void CmdSubmit_Click(object sender, EventArgs e)
        {
            Response.Redirect("QueryStringExample.aspx?Name=" + TxtName.Text + "&City=Chennai");
        }
    }
}