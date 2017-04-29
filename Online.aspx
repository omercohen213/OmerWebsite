<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Online.aspx.cs" Inherits="Online" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<div class="div1" style="margin-top:30px">Online Gameplay</div>
<div class="OnlineDiv" >
<span style="font-size:21px"> play lets players go head to head against other players around the world. When partying with a friend(s), it will always assign you to the same team. 
If a player leaves early,
an AI will fill their place until a new player is found to take their place; 
so it is possible to be queued into a game already in progress
(*when players leave ranked matches, there is no replacement). 
As of patch v1.04 (Aug 11, 2015),
players now have the option to vote to forfeit matches and the option to spectate matches.
At the end of each game, there is a 1 minute grace period between rematches that will end early if all players hit ready. 
Voting to 'Rematch' will put all remaining players on the same teams as before,
where otherwise the player teams can be shuffled.
Players in a party will always be on the same team when finding a match.
</span>
</div>

<div class="div1" style="margin-top:30px">Pages in category "Online Gameplay"</div>

<div class="OnlineDiv">
<center><span style="font-size:30px">Press on each image for more information:</span></center>
    <table>
        <tr>
            <td><a href="Competetive.aspx"><img src="Images/Season_4_ranks.jpg" alt="" class="images"/></a></td>
            <td><a href="ArenaPreferences.aspx"> <img src="Images/ArenaPref.jpg"alt="" class="images"/></a></td>
            <td><a href="TradeIn.aspx"><img src="Images/TradeIn.jpg" alt="" class="images" /></a></td>
            <td><a href="OnlineExhibitionMatches.aspx"><img src="Images/MatchExhibition.jpg" alt="" class="images"/></a></td>
        </tr>
        <tr>
            <td>Competetive</td>
            <td>Arena Preference</td>
            <td>Trade In</td>
            <td>Online Exhibition Matches</td>
        </tr>
    </table>
</div>
</center>
</asp:Content>

