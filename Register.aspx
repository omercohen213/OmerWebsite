<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript">
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <center>
      <form id="form1" runat="server" dir="ltr" method="post">
       <div class="div1">Enter your details:</div>
        <fieldset class="fieldset3">
         <table>
            <tr>
               <td>Firstname:</td>
               <td><input type="text" name="firstname" value="" size="15"/></td>
            </tr>
            <tr>
                <td>Lastname:</td>   
                <td><input type="text" name="lastname" value="" size="15"/></td>
            </tr>
            <tr>
                <td>Gender:</td>
                <td><input type="radio" name="gender" value="male"/>Male <input type="radio" name="gender" value="female" />Female</td>    
            </tr>
            <tr>
                <td>Username:</td>
                <td><input type="text" name="username" value="" size="10" maxlength="10"/></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><input type="password" name="psw" value="" size="10" maxlength="10"/></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><input type="text" name="email" value="" size="30" maxlength="30"/></td>
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

