using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace MyFirstAspPrj
{
    public partial class ProductEx : System.Web.UI.Page
    {
        private SqlConnection con = null;
        private SqlCommand cmd = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["HrCon"].ConnectionString);
            cmd = new SqlCommand("Select Productname,Description,Price,Quantity from Product", con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(reader);
            GvProduct.DataSource = dt;
            GvProduct.DataBind();
        }

        protected void CmdAddnew_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["HrCon"].ConnectionString);
            cmd = new SqlCommand("usp_InsertProduct", con);
            cmd.CommandType =CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ProductName", TxtProductname.Text);
            cmd.Parameters.AddWithValue("@Description", TxtDescription.Text);
            cmd.Parameters.AddWithValue("@Category", DdlCategory.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@Price", TxtPrice.Text);
            cmd.Parameters.AddWithValue("@Quantity", TxtQuantity.Text);
            if (!FileUploadImage.HasFile)
            {
                // cmd.Parameters.AddWithValue("@ProductImage", DBNull.Value);
                cmd.Parameters.Add("@ProductImage", SqlDbType.VarBinary);
                cmd.Parameters["@ProductImage"].Value = DBNull.Value;
            }
            else
            {
                int length = FileUploadImage.PostedFile.ContentLength;
                byte[] img = new byte[length];
                FileUploadImage.PostedFile.InputStream.Read(img, 0, length);
                cmd.Parameters.AddWithValue("@ProductImage", img);
            }
            con.Open();
            int result = cmd.ExecuteNonQuery();
            if (result > 0)
            {
                LblStatus.Text = "Product Added Succesfully";
                Page_Load(sender, e);
            }
            cmd.Dispose();
            con.Close();
        }

        protected void BtnReset_Click(object sender, EventArgs e)
        {
            TxtDescription.Text = "";
            TxtPrice.Text = "";
            TxtProductname.Text = "";
            TxtQuantity.Text = "";
            DdlCategory.SelectedValue = "0";
            TxtProductname.Focus();
        }
    }
}