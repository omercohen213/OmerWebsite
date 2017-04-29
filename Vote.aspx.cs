using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.OleDb;

public partial class Vote : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
            Response.Redirect("Default.aspx");

        // connectionString בניית
        String path = Server.MapPath(@"App_Data\Database.mdb"); //שם הקובץ
        string connectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + path;

        // המאפשר קשר לבסיס הנתונים OleDbConnection יצירת אוביקט 
        OleDbConnection conn = new OleDbConnection(connectionString);

        // command יצירת אוביקט פעולה 
        OleDbCommand cmd = new OleDbCommand();
        cmd.Connection = conn;

        cmd.CommandText = String.Format("Update users set SurveyVote=yes where email='{0}';", Session["email"]);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();


        string ans = Request.Form["answer"];
        switch (ans)
        {
            case "Octane":
                Application.Lock();
                Application["Octane"] = (int)(Application["Octane"]) + 1;
                Application.UnLock();
                break;
            case "Dominus":
                Application.Lock();
                Application["Dominus"] = (int)(Application["Dominus"]) + 1;
                Application.UnLock();
                break;
            case "Batmobile":
                Application.Lock();
                Application["Batmobile"] = (int)(Application["Batmobile"]) + 1;
                Application.UnLock();
                break;
            case "other":
                Application.Lock();
                Application["other"] = (int)(Application["other"]) + 1;
                Application.UnLock();
                break;
        }

        Session["vote"] = "yes";

        Response.Redirect("Survey.aspx");
    }
}