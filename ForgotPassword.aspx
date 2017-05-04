<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<form id="form1" runat="server" dir="ltr">
    <fieldset id="ForgotPasswordDiv" >
        <table >       
             <tr>
                <td>Email:</td>
                <td><input type="text" placeholder="Enter email address" id="email" name="email" style="display:table-cell"/><span class="span_error" id="email_error" style="color:Red"></span><%=error %></td>
             </tr>
             <tr>
                <td>Security Question:</td>
                <td>
                    <select>
                        <option>What was the name of your first teacher:</option>
                        <option>What was the name of your first dog:</option>
                        <option>What was the name of your elementary school?</option>
                        <option>In what city or town does your nearest sibling live?</option>
                    </select>
                </td>
                <td><input type="text" name="personalInfo" id="personalInfo" size="20" maxlength="20"  style="display:table-cell"/><span class="span_error" style="color:Red" ></span></td>
             </tr>
             <tr>
                <td><input class="btn" type="submit" value="Recover password" name="submit"/></td>                  
             </tr>

        </table>
    </fieldset>       
</form>      
</center>
</asp:Content>

