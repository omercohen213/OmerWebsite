<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript">
    function checkInputRadio(element_name, element_error) {
        element_array = document.getElementsByName(element_name);

        var flagRadio = false;
        for (i = 0; i < element_array.length; i++) {
            if (element_array[i].checked == true) {
                flagRadio = true;
                break;
                ;
            }
        }

        if (flagRadio == false) {
            element_error.innerHTML = "<br />Choose your gender.";
            return false;
        } else {
            element_error.innerHTML = "";
            return true;
        }
    }
    function checkInputPassword(element_checked, element_error) {
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
            error.innerHTML = "Enter a password between 5 and 10 characters";
            return false;
        }
        else if (!digit) {
            pas1.style.backgroundColor = 'red';
            error.innerHTML = "Password must have at least one digit.";
            return false;
        }
        else if (!sif) {
            pas1.style.backgroundColor = 'red';
            error.innerHTML = "Password must have at least one letter";
            return false;
        }
        else {
            pas1.style.backgroundColor = "";
            error.innerHTML = "";
            pass = true;
            return true;
        }
    }

    function checkInputUserName(element_checked, element_error) {
        value = element_checked.value;
        if (value == "") {
            element_checked.style.backgroundColor = "Red";
            element_error.innerHTML = "Enter username";
            return false;
        }
        else if ((value.length < 4) || (value.length > 10)) {
            element_checked.style.backgroundColor = "Red";
            element_error.innerHTML = "Enter a username between 4 and 10 characters.";
            return false;
        } else {
            element_checked.style.backgroundColor = "";
            element_error.innerHTML = "";
            return true;
        }
    }
    function checkName(element_name, element_error) {
        y = element_name.value;
        if (y == "") {
            element_name.style.backgroundColor = "Red";
            
            element_error.innerHTML = "Enter firstname";
            return false;
        }
        else if (!(isNaN(y))) {
            element_name.style.backgroundColor = "Red";
            
            element_error.innerHTML = "Enter letters only";
            return false;
        } else {
            element_name.style.backgroundColor = "";
            element_error.innerHTML = "";
            return true;
        }
    }
    function checkForm(pass) {

        var check1 = checkName(firstname, firstname_error);
        var check2 = checkName(lastname, lastname_error);
        var check3 = checkInputUserName(username, name_error1);
        var check4 = checkInputPassword(pass, password_error);
        var check5 = checkInputRadio("gender", radio_error1);
        var check6 = checkEmail(email, email_error);
        if (check1 && check2 && check3 && check4 && check5 && check6) {
            return true;
        }

        return false;
    }

    function isValidEmail(element_email, element_error) {
        str = element_email.value;
        if (str == "") {
            element_email.style.backgroundColor = "Red";
            
            element_error.innerHTML = "Enter email address";
            return false;
        }

        if (str.indexOf("@") < 1) {
            element_email.style.backgroundColor = "Red";
            
            element_error.innerHTML = "Email cannot start with the @ character";
            return false;
        }


        if (str.split("@").length != 2) {
            element_email.style.backgroundColor = "Red";
            
            element_error.innerHTML = "Email cannot have more than one @ character or zero";
            return false;
        }

        if (!((str.lastIndexOf(".") == str.length - 3) || (str.lastIndexOf(".") == str.length - 4))) {
            element_email.style.backgroundColor = "Red";
            
            element_error.innerHTML = "A point must be located 2 or 3 characters from the email end";
            return false;
        }

        if (str.indexOf(".") == 0) {
            element_email.style.backgroundColor = "Red";
            
            element_error.innerHTML = "The email cannot start with a period ";
            return false;
        }

        var res = isValidString(element_email, element_error); //בדיקה האם קיימים תווים לא חוקיים באימייל
        if (res == false) {
            element_email.style.backgroundColor = "Red";
            
            element_error.innerHTML = "Unvaild characters in the email address";
            return false;
        }

        return true;
    }




    function isValidString(element_email, element_error) {

        var badCharStr = "$%^*\()+[]{}<>&";

        var apostrophe = "\"";
        str = element_email.value;
        pos = str.indexOf(apostrophe);
        if (pos > -1) {
            element_email.style.backgroundColor = "Red";
            
            element_error.innerHTML = "Quotation marks cannot is unvaild in the email address ";
            return false;
        }

        for (var i = 0; i < badCharStr.length; i++) {
            badChr = badCharStr.charAt(i)
            pos = str.indexOf(badChr);
            if (pos > -1) {
                element_email.style.backgroundColor = "Red";
                
                element_error.innerHTML = "Unvaild characters in the email address ";
                return false;
            }
        }
        return true;
    }

    function checkEmail(element_email, element_error) {
        y = element_email.value;
        if (!(isValidEmail(element_email, element_error)))
            return false;
        else {
            element_email.style.backgroundColor = "";
            element_error.innerHTML = "";
            return true;
        }
    }
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <center>
      <form id="form1" runat="server" dir="ltr" method="post" onsubmit="return checkForm(password)">
       <div class="div1">Enter your details:</div>
        <fieldset class="fieldset3">
         <table>
            <tr>
               <td>Firstname:</td>
               <td><input type="text" id="firstname" name="firstname" size="15" maxlength="30"/><span class="span_error" id="firstname_error" style="color:Red"> </span> </td>
            </tr>
            <tr>
                <td>Lastname:</td>   
                <td><input type="text" id="lastname" name="lastname" size="15" maxlength="30"/><span class="span_error"  id="lastname_error" style="color:Red"> </span></td>
            </tr>
            <tr>
                    <td >Gender:</td>
                     <td><input type="radio" name="gender" value="male" /> male 
                        <input type="radio" name="gender" value="female"/> female
                     <span style="color:Red; display:inline" id="radio_error1"></span>
                        
                    </td> 
            </tr>
            <tr>
                <td>Username:</td>
                <td><input type="text" id="username" name="username" size="10" maxlength="30"/><span class="span_error" id="name_error1" style="color:Red"> </span></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><input type="password" id="pass" name="password" maxlength="10" size="10"/><span class="span_error" id="password_error" style="color:Red"> </span></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><input type="text" name="email" id="email" size="30" maxlength="30"/><span class="span_error" id="email_error" style="color:Red"> </span></td>
            </tr>
            <tr>
                <td><input type="submit" class="btn" value="Submit"/></td>
                <td><input type="reset" class="btn" value="Clean"/></td>
            </tr>  
         </table>
       </fieldset>      
     </form>
    </center>
</asp:Content>

