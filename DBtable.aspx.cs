using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.OleDb;

public partial class DBtable : System.Web.UI.Page
{
    public string usersDataTable = "";
    public string usersCount = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        string userrname = Session["user"].ToString();
        if (!(userrname == "Admin"))
            Response.Redirect("Default.aspx");
        
        
        build_users_table();
    }
    protected void build_users_table()
    {
        String path = Server.MapPath(@"App_Data\Database.mdb"); //שם הקובץ
        string connectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + path;

        // המאפשר קשר לבסיס הנתונים OleDbConnection יצירת אוביקט 
        OleDbConnection conn = new OleDbConnection(connectionString);

        // command יצירת אוביקט פעולה 
        OleDbCommand cmd = new OleDbCommand();
        cmd.Connection = conn;
        // SELECT הכנת פקודת
        string sql = "";

        if (Request.Form["submitFilterName"] != null)
        {
            // כפתור חיפוש לפי שם נלחץ
            string filterName = Request.Form["filterFirstName"];
            if ((filterName != null) && (filterName.Length != 0))
            {
                // קיים ערך בשדה החיפוש לפי שם פרטי
                sql = String.Format("SELECT * FROM users WHERE firstName='{0}';", filterName);
            }
        }
        else
        {
            sql = "SELECT * FROM users;"; // שאילתת בחירה
        }
        cmd.CommandText = sql;

        // שליפת הנתונים לתוך אוביקט טבלה
        DataTable dt = new DataTable();
        OleDbDataAdapter da = new OleDbDataAdapter(cmd);
        da.Fill(dt);

        int length = dt.Rows.Count; // מספר הרשומות בטבלה
        if (length > 0)
        {
            // אם נמצאו רשומות
            usersDataTable += "<center><div class='div1'>Database Table:</div>";
            usersDataTable += "<fieldset class='fieldset3'>";
            usersDataTable += "<table style='border-collapse:collapse border-color:solid black>"; // פתיחת טבלה והכנת כותרת לנתונים המוצגים
            usersDataTable += "<tr >";
            usersDataTable += "<th class='users_cell' ;></th>";
            usersDataTable += "<th class='users_cell' ;>Email</th>";
            usersDataTable += "<th class='users_cell' ;>Firstname</th>";
            usersDataTable += "<th class='users_cell' ;>Lastname</th>";
            usersDataTable += "<th class='users_cell'' ;>Password</th>";
            usersDataTable += "<th class='users_cell'' ;>Edit</th>";
            usersDataTable += "<th class='users_cell'' ;>Delete</th>";
            usersDataTable += "</tr>";
            for (int i = 0; i < length; i++) // הדפסת הרשומות
            { // הדפסת כל הרשומות בטבלה
                usersDataTable += "<tr>";
                usersDataTable += "<td class='users_cell' >" + dt.Rows[i]["email"] + "</td>";
                usersDataTable += "<td class='users_cell' >" + dt.Rows[i]["firstName"] + "</td>";
                usersDataTable += "<td class='users_cell' >" + dt.Rows[i]["lastName"] + "</td>";
                usersDataTable += "<td class='users_cell' >" + dt.Rows[i]["pass"] + "</td>";
                // הוספת קישור עריכה
                usersDataTable += "<td class='users_cell' > <a href='EditUser.aspx?email=" + dt.Rows[i]["email"].ToString() + "'> Edit </a> </td>";

                // הוספת קישור מחק
                usersDataTable += "<td class='users_cell' > <a href='DeleteUser.aspx?email=" + dt.Rows[i]["email"].ToString() + "'> Delete </a> </td>";


                usersDataTable += "</tr>";
            }
            usersDataTable += "</table>";// סגירת טבלה
            usersCount = "Number of users: " + length.ToString() + "</center>";
        }
    }
}