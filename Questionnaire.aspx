<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Questionnaire.aspx.cs" Inherits="Questionnaire" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript">

    function Check(name_grade) {
        var scum = checkTextBox(PreviousName, "Supersonic Acrobatic Rocket Powered Battle cars");
        scum += checkTextBox(company, "Psyonix");
        scum += checkInputRadio("ProsCar", 0);
        scum += checkInputDropdown(AwardYear);
        scum += checkInputRadio("ProsName", 0);
        scum += checkInputRadio("CarImage", 0);
        name_grade.innerHTML = "Your grade is:"+ scum+"/6";

    }

    function checkTextBox(element_text, answer) {

        y = element_text.value;
        if (y == answer) {
            return 1;
        }
        else {
            return 0;
        }
    }

    function checkInputRadio(element_name, i) {
        element_array = document.getElementsByName(element_name);
        if (element_array[i].checked == true) {
            return 1;
        }
        else {
            return 0;
        }
    }
    function checkInputDropdown(element_checked) {

        if (element_checked.value == "2015") {
            return 1;
        }
        else {
            return 0;
        }
    }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" onsubmit="return checkForm()">
    <center>
    <div class="div1">Answer the questions:</div>
      <form id="form1" runat="server" dir="ltr" method="post">
        <fieldset class="fieldset3">
         <table>
            <tr >         
               <td>1. What was the name of the previous game in Rocket League series?</td>
               <td><input type="text" id="PreviousName" value="" size="15"/>
                </td>
            </tr>
            <tr>
                <td>2. Which company has developed and published this game?</td>   
                <td><input type="text" id="company" value="" size="15"/></td>
            </tr>
            <tr>
                <td>3. Which car do professional players usually play with?</td>
                <td><input type="radio" name="ProsCar" value="Octane"/>Octane
                <input type="radio" name="ProsCar" value="Gizmo" />Gizmo
                <input type="radio" name="ProsCar" value="Takumi" />Takumi
                </td>   
                 
            </tr>

            <tr>
                <td id="td1">4. Rocket League got the award "Game of the Year" in what year?</td>
                <td>
                    <select name="AwardYear" id="AwardYear">
                        <option value="" selected="selected">Select year:</option>
                        <option value="2014">2014</option>
                        <option value="2015">2015</option>
                        <option value="2005">2005</option>
                        <option value="2016">2016</option>
                        <option value="2053">2053</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>5. What is the name of the most professional player in Rocket League?</td>
            </tr>     
            <tr>
                <td><input type="radio" name="ProsName" value="Kronovi"/>Kronovi</td>
            </tr>
            <tr>
                <td><input type="radio" name="ProsName" value="Markydooda"/>Markydooda</td>
            </tr>
            <tr>
                <td><input type="radio" name="ProsName" value="Rizzo"/>Rizzo</td>
            </tr>  
            <tr><td>6.Which image shows the Octane car?</td></tr>
            <tr>
                
                <td><input type="radio" name="CarImage" value="Octane" /><img src="Images/Octane.jpg" alt="octane" class="images" />
                <input type="radio" name="CarImage" value="Dominus" /><img src="Images/Dominus.jpg"alt="Dominus" class="images"/>
                <input type="radio" name="CarImage" value="Batmobile" /><img src="Images/Batmobile.jpg" alt="octane" class="images" /></td>
            </tr>
            <tr>
                <td> <input type="button" value="Submit" onclick="Check(name_grade)" class="btn" /> </td>
                <td  rowspan="2"><span style="color:Red" id="name_grade"> </span> </td>
                
            </tr>           
         </table>
       </fieldset> 
     </form>
    </center>
</asp:Content>

