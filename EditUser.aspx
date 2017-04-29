<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EditUser.aspx.cs" Inherits="EditUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <script type="text/javascript">
var msg = "";

        function isEmpty(str) {
            return (str.length == 0);
        }


        function checkForm() {           

            if (msg.length == 0)
                return true;
            else {
                document.getElementById('errors').innerHTML = msg;
                msg = "";
                return false;
            }
        }
 </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <center>
     <form id="editUser" runat="server" action="UpdateUser.aspx" method="post" onsubmit="return checkForm();">
        <div class="div1">Edit details:</div>
        <fieldset class="fieldset3">
           <table>  
                <tr>
                    <td>Email:</td>
                    <td>
                        <input type="hidden" id="email"  name="email" dir="ltr" value="<% = dt.Rows[0]["Email"] %>" /> <% = dt.Rows[0]["Email"] %><td>
                    </tr>
                  <tr>
                    <td>Firstname:</td>
                    <td > <input type="text" id="firstName" name="firstName" value="<% = dt.Rows[0]["Firstname"] %>"/></td>
                  </tr> 
                  <tr>
                    <td>Lastname:</td>
                    <td > <input type="text" id="lastName" name="lastName" value="<% = dt.Rows[0]["LastName"] %>"/></td>
                  </tr> 
                  <tr>
                    <td>Password:</td>
                    <td ><input type="password" id="password"  name="password" value="<% = dt.Rows[0]["Pass"] %>"/></td>
                  </tr>
   
                  <tr>
                    <td>Gender:</td>
                    <td >
                        <input type="radio" name="gender" value="male"   <%if(dt.Rows[0]["Gender"].ToString() == "male") { %> checked="checked" <%}%> /> זכר
                        <input type="radio" name="gender" value="female" <%if(dt.Rows[0]["Gender"].ToString() == "female") { %> checked="checked" <%}%> />נקבה
                    </td>
                </tr>           
            </table>
            <input type="submit" name="submit" value="Update details" />
            <br />
            <p id="errors"> </p>
            <%=errors %>
        </fieldset>   
     </form>
  </center>
</asp:Content>

