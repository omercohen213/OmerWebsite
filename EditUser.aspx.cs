using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.OleDb;

public partial class EditUser : System.Web.UI.Page
{
    public string errors = "";
    public string serverMsg = "";

    public DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("Default.aspx");
        }

        string email = (string)(Request.QueryString["email"]);
        

        String path = Server.MapPath(@"App_Data\Database.mdb"); //שם הקובץ
        string connectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + path;

        // המאפשר קשר לבסיס הנתונים OleDbConnection יצירת אוביקט 
        OleDbConnection conn = new OleDbConnection(connectionString);

        // command יצירת אוביקט פעולה 
        OleDbCommand cmd = new OleDbCommand();
        cmd.Connection = conn;

        // SELECT הכנת פקודת
        cmd.CommandText = String.Format("SELECT * FROM users WHERE email='{0}';", email);

        OleDbDataAdapter da = new OleDbDataAdapter(cmd);
        da.Fill(dt);
    }       
}