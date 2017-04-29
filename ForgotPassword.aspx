<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<form id="form1" runat="server" dir="ltr">
    <fieldset id="fieldset1">
        <table>       
             <tr>
                <td>Email:
                <input type="text" placeholder="Enter email address" id="email" name="email"/><%=pass %><span class="span_error" id="email_error"></span><%=error %></td>
             </tr>
             <tr>
                <td><input class="btn" type="submit" value="Recover password" name="submit"/></td>                  
             </tr>

        </table>
    </fieldset>       
</form>      
</center>
</asp:Content>

