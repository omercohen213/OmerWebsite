<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Survey.aspx.cs" Inherits="Survey" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript">


    function checkSeker() {

        var i;
        var element_array = document.getElementsByName("answer");
        for (i = 0; i < element_array.length; i++) {
            // מעבר על מערך כפתורי הרדיו             
            if (element_array[i].checked == true) {
                return true;
            }
        }
        alert("You must answer the question in order to vote");
        return false;
    }
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<%
if (Session["user"] != null)
{
%>
        <% if (Session["vote"].ToString().Equals("yes"))
           {
        %>   
             <div class="div1">Survey results:</div>

             <table>
                <tr> 
                    <td> Assembly lovers:</td>
                    <td> <%=Application["asm"]%> </td>
                </tr>
                <tr> 
                    <td> C# lovers:</td>
                    <td> <%=Application["c"]%> </td>
                </tr>
                <tr> 
                    <td> Web development lovers:</td>
                    <td> <%=Application["internet"]%> </td>
                </tr>
                <tr> 
                    <td> Others:  </td>
                    <td> <%=Application["other"]%></td>
                </tr>
                <tr> 
                    <td> Total number of voters:</td>
                    <td> <%=((int)Application["asm"] + (int)Application["c"] + (int)Application["internet"] + (int)Application["other"])%>  </td>
                </tr>
            </table>

        <%
           }
           else
           {
        %>

       
        <h2>Which of the following is your favorite subject?</h2>
        <form name="seker" action="vote.aspx" method="post" onsubmit="return checkSeker()">
            <input type="radio" name="answer" value="asm" />אסמבלר<br />
            <input type="radio" name="answer" value="c" />שפת סי<br />
            <input type="radio" name="answer" value="internet" />תיכנות אינטרנט<br />
            <input type="radio" name="answer" value="other" />אחר<br />
            <br />
            <input type="submit" value="Vote" />

        </form>
<% 
           }
    } 
%>
</asp:Content>

