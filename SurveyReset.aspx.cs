using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SurveyReset : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != "Admin")
        {
            Response.Write("Only Admins are aligible to reset the survey results");
            return;
        }
        Application.Lock();
        Application["Octane"] = 0;
        Application.UnLock();

        Application.Lock();
        Application["Dominus"] = 0;
        Application.UnLock();

        Application.Lock();
        Application["Batmobile"] = 0;
        Application.UnLock();

        Application.Lock();
        Application["other"] = 0;
        Application.UnLock();

        Session["surveyreset"] = "true";
        Response.Redirect("Survey.aspx");
        
        
    }
}