<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Survey.aspx.cs" Inherits="Survey" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript">


    function checkSurvey() {
        
        var Error
        var i;
        var element_array = document.getElementsByName("answer");
        for (i = 0; i < element_array.length; i++) {
            // מעבר על מערך כפתורי הרדיו             
            if (element_array[i].checked == true) {
                return true;
            }
        }
        Error=("You must answer the question in order to vote");
        return false;
    }
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<%
if (Session["user"] != null)
{
%>
<% if (Session["surveyreset"].ToString().Equals("true"))
 %> <center><div id="SurveyResetDiv">Survey results succsesfully reset!</div></center>
        
        <% if (Session["vote"] == "yes")
           {
        %>   
             <center>
             <div class="div1">Survey results:</div>
             <div class="SurveyDiv">
             <table>
                <tr> 
                    <td> Octane:</td>
                    <td> <%=Application["Octane"]%> </td>
                </tr>
                <tr> 
                    <td> Dominus:</td>
                    <td> <%=Application["Dominus"]%> </td>
                </tr>
                <tr> 
                    <td> Batmobile:</td>
                    <td> <%=Application["Batmobile"]%> </td>
                </tr>
                <tr> 
                    <td> Other:  </td>
                    <td> <%=Application["other"]%></td>
                </tr>
                <tr> 
                    <td> Total number of voters:</td>
                    <td> <%=((int)Application["Octane"] + (int)Application["Dominus"] + (int)Application["Batmobile"] + (int)Application["other"])%>  </td>
                </tr>
            </table>
            </div>
            </center>
            <%if ((string)Session["user"] == "Admin")
            { %>
             <center>
                <form action="SurveyReset.aspx" method="post">
                   <input type="submit" value="Reset survey results"  name="submitSurveyReset" />
                </form>
             </center>
            <%} %>
        <%
           }
           else
           {
        %>

       <center>
        <div class="div1">Which of the following is your favorite car?</div>
        <div class="SurveyDiv">
        <form name="Survey" action="vote.aspx" method="post" onsubmit="return checkSurvey()">
            <input type="radio" name="answer" value="Octane" />Octane<br />
            <input type="radio" name="answer" value="Dominus" />Dominus<br />
            <input type="radio" name="answer" value="Batmobile" />Batmobile<br />
            <input type="radio" name="answer" value="other" />Other<br />
            <input type="submit" value="Vote"/> <br />
        </form>
        </div>
        </center>
<% 
           }
    } 
%>


</asp:Content>

