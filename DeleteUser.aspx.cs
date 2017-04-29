using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.OleDb;

public partial class DeleteUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string email = Request.QueryString["email"].ToString();

        String path = Server.MapPath(@"App_Data\Database.mdb"); //שם הקובץ
        string connectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + path;

        // המאפשר קשר לבסיס הנתונים OleDbConnection יצירת אוביקט 
        OleDbConnection conn = new OleDbConnection(connectionString);

        // command יצירת אוביקט פעולה 
        OleDbCommand cmd = new OleDbCommand();
        cmd.Connection = conn;

        // DELETE הכנת פקודת
        cmd.CommandText = String.Format("DELETE * FROM users WHERE email='{0}';", email);  // DELETE שאילתת 

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

        Response.Redirect("DBtable.aspx");
    }          
}