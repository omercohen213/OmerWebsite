<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Questionnaire.aspx.cs" Inherits="Questionnaire" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript">
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
      <form id="form1" runat="server" dir="ltr" method="post">
        <fieldset class="fieldset3">
         <table>
            <tr >         
               <td class="style1">1. What was the name of the previous game in Rocket League series?</td>
               <td class="style1"><input type="text" name="PreviousName" value="" size="15"/><div class="div1">Answer the questions:</div>
                </td>
            </tr>
            <tr>
                <td class="style2">2. Which company has developed and published this game?</td>   
                <td class="style2"><input type="text" name="company" value="" size="15"/></td>
            </tr>
            <tr>
                <td>3. Which car do professional players usually play with?</td>
                <td>
                <input type="radio" name="ProsCar" value="Octane"/>Octane
                <input type="radio" name="ProsCar" value="Gizmo" />Gizmo
                <input type="radio" name="ProsCar" value="Takumi" />Takumi
                </td>    
            </tr>
            <tr>
                <td id="td1">4. Rocket League got the award "Game of the Year" in what year?</td>
                <td>
                    <select name="AwardYear">
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
            <tr><td><input type="radio" name="ProsName" value="Kronovi"/>Kronovi</td></tr>
            <tr><td><input type="radio" name="ProsName" value="Markydooda"/>Markydooda</td></tr>
            <tr><td><input type="radio" name="ProsName" value="Rizzo"/>Rizzo</td></tr>  
            <tr>
            <td id="td2">What is your favorite game mode?</td>
            </tr>
            <tr>
                <td><input type="checkbox" name="favoriteGameMode" value="SoloDuel" />Solo Duel (1 vs 1)</td>
            </tr>
            <tr>
                <td><input type="checkbox" name="favoriteGameMode" value="Doubles"  />Doubles (2 vs 2)</td>
            </tr>
            <tr>
                <td><input type="checkbox" name="favoriteGameMode" value="Rumble"  />Rumble (3 vs 3)</td>
            </tr>
            <tr>
                <td>Which car do you like the most?</td>
            </tr>
            <tr>    
                <td><input type="radio" name="Cars" value="Octane";/><img src="Images/Octane.jpg" alt="Octane" class="images"/></td>
                <td><input type="radio" name="Cars" value="Dominus"/><img src="Images/Dominus.jpg" alt="Dominus" class="images"/></td>
                <td><input type="radio" name="Cars" value="Batmobile"/><img src="Images/Batmobile.jpg" alt="Batmobile" class="images"/></td>
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

