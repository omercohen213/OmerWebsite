using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.OleDb;

public partial class PasswordRecovery : System.Web.UI.Page
{
    public string email = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Form["submit"] != null)
        {
            string email = Request.Form["email"];
            // connectionString בניית
            String path = Server.MapPath(@"App_Data\Database.mdb"); //שם הקובץ
            string connectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + path;

            // המאפשר קשר לבסיס הנתונים OleDbConnection יצירת אוביקט 
            OleDbConnection conn = new OleDbConnection(connectionString);

            // command יצירת אוביקט פעולה 
            OleDbCommand cmd = new OleDbCommand();
            cmd.Connection = conn;
            //  בתוך אוביקט הפעולה  select הכנת פקודת
            cmd.CommandText = String.Format("SELECT * FROM users WHERE Email='{0}';", email);
            //cmd.CommandText = "SELECT * FROM users WHERE email = '" + email + "'";

            // שליפת הנתונים לתוך אוביקט טבלה
            DataTable dt = new DataTable();
            OleDbDataAdapter da = new OleDbDataAdapter(cmd);
            da.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                Session["email"] = dt.Rows[0]["email"];
            }
        }
    }
}