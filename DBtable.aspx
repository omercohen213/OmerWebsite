<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DBtable.aspx.cs" Inherits="DBtable" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%=usersDataTable%>
    <br />
    <%=usersCount%>

<center>
    <form action="" method="post">        
        <div class='div1' style="margin-bottom:50px">
        <table>
            <tr>
                <td>Filter by name:</td>
                <td> <input type="text" id="filterFirstName" name="filterFirstName"/> </td>
                <td align="center"> <input type="submit" id="submitFilterName" name="submitFilterName" value="Filter"/> </td>
            </tr>
        </table>
        </div>
     </form>
 </center>
</asp:Content>

