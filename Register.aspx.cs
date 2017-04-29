using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.OleDb;

public partial class Register : System.Web.UI.Page
{
    public string errors = "";
    public string serverMsg = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (this.IsPostBack)
        {

            // תזכורת:
            // post:        string fname = Request.Form["fname"];
            // get:         string fname = Request.QueryString["fname"];
            // post & get:  string fname = Request["fname"];
            // קליטת הנתונים שנשלחו מהטופס:

            string Firstname = Request["firstName"];
            string Lastname = Request["lastName"];
            string Gender = Request["gender"];
            string Username = Request["username"];
            string password = Request["password"];
            string Email = Request["email"];


            // connectionString בניית
            String path = Server.MapPath(@"App_Data\Database.mdb"); //שם הקובץ
            string connectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + path;

            // המאפשר קשר לבסיס הנתונים OleDbConnection יצירת אוביקט 
            OleDbConnection conn = new OleDbConnection(connectionString);

            // command יצירת אוביקט פעולה 
            OleDbCommand cmd = new OleDbCommand();
            cmd.Connection = conn;
            //  בתוך אוביקט הפעולה  select הכנת פקודת
            cmd.CommandText = String.Format("SELECT * FROM users WHERE Email='{0}';", Email);
            //cmd.CommandText = "SELECT * FROM users WHERE email = '" + email + "'";

            // שליפת הנתונים לתוך אוביקט טבלה
            DataTable dt = new DataTable();
            OleDbDataAdapter da = new OleDbDataAdapter(cmd);
            da.Fill(dt);

            //מניעת הרשמה כפולה
            if (dt.Rows.Count != 0)
            {
                //כדי לא לחזור לבניית הטופס מחדש פעולה שתמחק את הנתונים
                //כך ניתן לחזור לטופס בעזרת חזור ולמלא את הנתונים

                Response.Write("<p style='color:red'> Email already exists in the system.</p>");
                Response.End();
            }
            else
            {
                // תזכורת:
                // post:        string fname = Request.Form["fname"];
                // get:         string fname = Request.QueryString["fname"];
                // post & get:  string fname = Request["fname"];


                // הכנסת רשומה בודדת לתוך מסד הנתונים
                string sql;
                sql = "INSERT INTO users";
                sql += "(Firstname, Lastname, Gender, Username, Pass, Email)";
                sql += "VALUES (";
                sql += "'" + Firstname + "'";
                sql += ",'" + Lastname + "'";
                sql += ",'" + Gender + "'";
                sql += ",'" + Username + "'";
                sql += ",'" + password + "'";
                sql += ",'" + Email + "'";
                sql += ")";


                cmd.CommandText = sql;
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("Default.aspx");
        
            }
        }
         
    }
}