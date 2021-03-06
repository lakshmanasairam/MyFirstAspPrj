﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Web;

namespace MyFirstAspPrj
{
    /// <summary>
    /// Summary description for Handler1
    /// </summary>
    public class Handler1 : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string id = context.Request.QueryString["Id"].ToString();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HRCon"].ConnectionString);
            SqlCommand cmd = new SqlCommand("select Image from Product where Id=@Id", con);
            cmd.Parameters.AddWithValue("@Id", id);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            reader.Read();
            context.Response.BinaryWrite((byte[])reader["Image"]);
            reader.Close();
            cmd.Dispose();
            context.Response.End();
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}