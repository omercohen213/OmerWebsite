<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        // Code that runs on application startup
        Application["userCounter"] = 0;

        Application["Octane"] = 0;
        Application["Dominus"] = 0;
        Application["Batmobile"] = 0;
        Application["other"] = 0;
    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started
        Application.Lock();
        Application["userCounter"] = (int)(Application["userCounter"]) + 1;
        Application.UnLock();
        
        
        Session["surveyreset"] = false;
        Session["email"] = null;
        Session["user"] = null;
        Session["vote"] = "no";

    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }
       
</script>
