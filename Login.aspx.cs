﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.OleDb;

public partial class Login : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Form["submit"] != null)
        {
            string email = Request.Form["email"];
            string pass = Request.Form["pass"];
            // connectionString בניית
            String path = Server.MapPath(@"App_Data\Database.mdb"); //שם הקובץ
            string connectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + path;

            // המאפשר קשר לבסיס הנתונים OleDbConnection יצירת אוביקט 
            OleDbConnection conn = new OleDbConnection(connectionString);

            // command יצירת אוביקט פעולה 
            OleDbCommand cmd = new OleDbCommand();
            cmd.Connection = conn;
            //  בתוך אוביקט הפעולה  select הכנת פקודת
            cmd.CommandText = String.Format("SELECT * FROM users WHERE Email='{0}' AND Pass='{1}';", email, pass);
            //cmd.CommandText = "SELECT * FROM users WHERE email = '" + email + "'";

            // שליפת הנתונים לתוך אוביקט טבלה
            DataTable dt = new DataTable();
            OleDbDataAdapter da = new OleDbDataAdapter(cmd);
            da.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                Session["email"] = dt.Rows[0]["email"];
                if ((bool)(dt.Rows[0]["isAdmin"]))
                    Session["user"] = "Admin";
                else
                {
                    Session["user"] = (string)dt.Rows[0]["firstName"] + " " + (string)dt.Rows[0]["lastName"];
                }
                    Response.Redirect("Default.aspx");//משתמש יועבר לדף ראשי

                
            }   
                
            }
        }

    }
