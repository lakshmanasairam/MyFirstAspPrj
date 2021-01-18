using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;

namespace MyFirstAspPrj.App_Code
{
    public class HRDataSource
    {
        private SqlConnection con = null;
        private SqlCommand cmd = null;
        private DataTable dt = null;

        public DataTable GetEmployyeData()
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["HRCon"].ConnectionString);
            using (cmd = new SqlCommand("Select cEmployeeCode,VFirstname,cCity,cPhone from Employee", con)) 
            {
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                dt = new DataTable();
                dt.Load(reader);
            }
            return dt;
        }
        
    }
}