using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstAspPrj
{
    public partial class HiddenFeature : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CmdSubmit_Click(object sender, EventArgs e)
        {
             float days= float.Parse(TxtWorkDays.Text);
            float grade = float.Parse(TxtGrade.Value);
            float sum = grade * days;
            lblSalary.Text = $"Total Salary:{sum}";

        }
    }
}