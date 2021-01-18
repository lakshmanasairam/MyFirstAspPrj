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
    public partial class AddItem : System.Web.UI.Page
    {
        private SqlConnection con = null;
        private SqlCommand cmd = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CmdSubmit_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["HrCon"].ConnectionString);
            cmd = new SqlCommand("usp_InsertEcomerce", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Itemname", TxtItemname.Text);
            cmd.Parameters.AddWithValue("@Description", TxtDescription.Text);
            cmd.Parameters.AddWithValue("@Price", TxtPrice.Text);
            cmd.Parameters.AddWithValue("@Quantity", TxtQuantity.Text);
            if (!FileUploadImage.HasFile)
            {
                cmd.Parameters.Add("@Image", SqlDbType.VarBinary);
                cmd.Parameters["@Image"].Value = DBNull.Value;
            }
            else
            {
                int length = FileUploadImage.PostedFile.ContentLength;
                byte[] img = new byte[length];
                FileUploadImage.PostedFile.InputStream.Read(img, 0, length);
                cmd.Parameters.AddWithValue("@Image", img);
            }
            cmd.Parameters.AddWithValue("@CategoryName", DdlCategory.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@Colour", DdlColour.SelectedValue.ToString());
            con.Open();
            int result = cmd.ExecuteNonQuery();
            if (result > 0)
            {
                LblStatus.Text = "Product Added Succesfully";
            }
            cmd.Dispose();
            con.Close();
        }

        protected void BtnReset_Click(object sender, EventArgs e)
        {
            TxtDescription.Text = "";
            TxtItemname.Text = "";
            TxtPrice.Text = "";
            TxtQuantity.Text = "";
            DdlCategory.SelectedValue = "0";
            DdlColour.SelectedValue = "0";
            TxtItemname.Focus();
        }
    }
}