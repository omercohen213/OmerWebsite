<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
    <div class="div1">Sign into your account:</div>
    <form id="form1" runat="server" dir="ltr">
          <fieldset id="fieldset1">
              <table>	       
                    <tr>
	                  <td>Email:</td>
	                  <td><input type="text" placeholder="Enter email address" id="email" /></td>
                      <td style="color:Red" id="email_error" ></td>
                    </tr>   
                    <tr>
	                  <td>Password:</td>
	                  <td><input type="password" placeholder="Enter password"/></td>
                    </tr>          
              </table>
          </fieldset>
          <fieldset id="fieldset2">
              <table>	
                   <tr>
                      <td><input class="btn" type="submit" value="Login"/></td>
	                  <td><input type="checkbox"/>Stay signed in</td>
                   </tr>
              </table>
          </fieldset>
    </form>
</center>

</asp:Content>

