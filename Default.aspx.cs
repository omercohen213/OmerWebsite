using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
   
    public string mymassege = "";
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["user"] != null)       
            mymassege = "Welcome, " + Session["user"] + "!";      
        
        else if ((string)(Session["user"]) == "Admin")// ?
            mymassege = "Wlecome, admin!";
        
        else
            mymassege = "Welcome, Guest!";
            
            //Response.Write("<a href=Login.aspx> הזדהות </a>");
            // :ניתן למנוע צפייה בכל הדפים עבור משתמש שלא הזדהה 
            //Response.End();

        
    }
}