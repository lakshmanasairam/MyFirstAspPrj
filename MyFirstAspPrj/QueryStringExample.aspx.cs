using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstAspPrj
{
    public partial class QueryStringExample : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string name = Request.QueryString["Name"].ToString();
            string city = Request.QueryString["City"].ToString();
            LblName.Text = name + " to " + city;
        }
    }
}