<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript">
    function CheckLogin() {
        var Check1 = checkInputpass(pass, pass_error);
        var Check2 = isValidEmail(email, email_error);
        if (Check1 && Check2) {
            return true;
        }
        return false
    }
    function checkInputpass(element_checked, element_error) {
        var pas1 = element_checked;
        var error = element_error;
        var pass = false;
        var pas = pas1.value;
        var sif = false;
        var digit = false;
        for (var i = 0; i < pas.length; i++) {
            if ((pas[i] >= 'a' && pas[i] <= 'z' || pas[i] >= 'A'
&& pas[i] <= 'Z') && !sif)
                sif = true;
            if ((pas[i] >= '0' && pas[i] <= '9') && !digit)
                digit = true;
        }
        if (pas1.value == "") {
            pas1.style.backgroundColor = 'red';
            error.innerHTML = "Enter password";
            return false;
        }
        else if (pas1.value.length > 10 || pas1.value.length < 5) {
            pas1.style.backgroundColor = 'red';
            error.innerHTML = "Password  must be between 5 and 10 characters.";
            return false;
        }
        else if (!digit) {
            pas1.style.backgroundColor = 'red';
            error.innerHTML = "Password must have at least one number.";
            return false;
        }
        else if (!sif) {
            pas1.style.backgroundColor = 'red';
            error.innerHTML = "Password must have at least one letter.";
            return false;
        }
        
        else {
            pas1.style.backgroundColor = "";
            error.innerHTML = "";
            pass = true;
            return true;
        }
    }
    function isValidEmail(element_email, element_error) {
        str = element_email.value;
        if (str == "") {
            element_email.style.backgroundColor = "Red";
            element_error.innerHTML = "Enter email address.";
            return false;
        }

        if (str.indexOf("@") < 1) {
            element_email.style.backgroundColor = "Red";
            element_error.innerHTML = "The @ sign cannot exist more than once or zero times.";
            return false;
        }


        if (str.split("@").length != 2) {
            element_email.style.backgroundColor = "Red";
            element_error.innerHTML = "The @ sign cannot exist more than once or zero times.";
            return false;
        }

        if (!((str.lastIndexOf(".") == str.length - 3) || (str.lastIndexOf(".") == str.length - 4))) {
            element_email.style.backgroundColor = "Red";
            element_error.innerHTML = "A point must be located in 2 or 3 characters from the email terminal.";
            return false;
        }

        if (str.indexOf(".") == 0) {
            element_email.style.backgroundColor = "Red";
            element_error.innerHTML = "The email cannot begin with a period.";
            return false;
        }

        var res = isValidString(element_email, element_error); //בדיקה האם קיימים תווים לא חוקיים באימייל
        if (res == false) {
            element_email.style.backgroundColor = "Red";
            element_error.innerHTML = "Invaild characters.";
            return false;
        }

        return true;
    }
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
    <div class="div1">Sign into your account:</div>
    <form id="form1" runat="server" dir="ltr" onsubmit="return CheckLogin()">
          <fieldset id="fieldset1">
              <table>	       
                    <tr>
	                  <td>Email:</td>
	                  <td><img src="Images/User.svg" alt="" width="30px" height="30px"/><input type="text" placeholder="Enter email address" id="email" name="email"/><span class="span_error" id="email_error"> </span></td>
                    </tr>   
                    <tr>
	                  <td>Password:</td>
	                  <td><img src="Images/lock.png" alt="" width="30px" height="30px"/><input type="password" id="pass" placeholder="Enter password" name="pass"/><span class="span_error" id="pass_error"> </span><a href="ForgotPassword.aspx">Forgot?</a></td>
                    </tr>          
              </table>
          </fieldset>
          <fieldset id="fieldset2">
              <table>	
                   <tr>
                      <td><input class="btn" type="submit" value="Login" name="submit"/></td>
	                  <td><input value="Save" type="checkbox"/>Stay signed in</td>
                   </tr>
              </table>
          </fieldset>
    </form>
</center>

</asp:Content>

