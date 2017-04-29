using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vote : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
            Response.Redirect("Default.aspx");

        string ans = Request.Form["answer"];
        switch (ans)
        {
            case "asm":
                Application.Lock();
                Application["asm"] = (int)(Application["asm"]) + 1;
                Application.UnLock();
                break;
            case "c":
                Application.Lock();
                Application["c"] = (int)(Application["c"]) + 1;
                Application.UnLock();
                break;
            case "internet":
                Application.Lock();
                Application["internet"] = (int)(Application["internet"]) + 1;
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