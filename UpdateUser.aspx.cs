using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using System.Data;
using System.Data.OleDb;

public partial class UpdateUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Form["Submit"] != null)
        {
            string Firstname = Request["firstName"];
            string Lastname = Request["lastName"];
            string Gender = Request["gender"];
            string Username = Request["username"];
            string password = Request["password"];
            string Email = Request["email"];
            
            String path = Server.MapPath(@"App_Data\Database.mdb"); //שם הקובץ
            string connectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + path;
            
            // המאפשר קשר לבסיס הנתונים OleDbConnection יצירת אוביקט 
            OleDbConnection conn = new OleDbConnection(connectionString);
            // command יצירת אוביקט פעולה 
            OleDbCommand cmd = new OleDbCommand();           
            cmd.Connection = conn;
           
            cmd.CommandText = String.Format("UPDATE Users SET Firstname='{0}', Lastname='{1}', Gender='{2}', Username='{3}', Pass='{4}' WHERE Email='{5}';", Firstname, Lastname, Gender, Username, password, Email);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            string userrname=Session["user"].ToString();
            if (userrname=="Admin")
                Response.Redirect("DBtable.aspx");
            else Response.Redirect("Default.aspx");
        }
    }
}