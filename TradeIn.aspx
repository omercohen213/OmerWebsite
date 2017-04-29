<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TradeIn.aspx.cs" Inherits="TradeIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<div class="div1-WithMarginBottom">Trade In</div>

<table class="NormalDiv">
 <tr>
    <td>
        The Trade-In System was introduced in patch v1.19 (June, 2016). It allows trading in 5 items at a time. 1 randomly drawn item of the next-highest quality is obtained in exchange.
        Trade-In System is found via “Manage Inventory” option in the Garage sub-menu. From there, select the items to trade in and confirm. <br />
        For every 5 "Uncommon" items that are traded in, 1 random "Rare" item is drawn in exchange. <br />
        For every 5 "Rare" items that are traded in, 1 random "Very Rare" item is drawn in exchange. <br />
        For every 5 "Very Rare" items from the same Crate series that are traded in, 1 random "Import" from that Crate series is drawn in exchange. <br />
        For every 5 "Import" items from the same Crate series that are traded in, 1 random "Exotic" from that Crate series is drawn in exchange.<br />
        "Exotic" items cannot be traded in as "Black Market" decals are a separate collection<br /></td>
    <td>
        <img src="Images/TradeIn.jpg" alt="TradeIn"/>
    </td>
</tr>
</table>
<div class="div1-WithMarginBottom" >Player-to-Player Item Trading</div>
<table class="NormalDiv">
<tr>
    <td>
         Item trading between players became possible with "Rumble" patch v1.22 (September 8, 2016).
         For example on Steam, you needs to be friends with the person you wish to trade with. After that one can invite (main menu: "Create Party" button) the player to join their party inside the game.
         Multiple items can be traded in any combination — 5 hats for 5 wheels? 8 Antennas for one Boost? That's entirely up to the mutual agreement between the trading parties.<br />
    </td>
    <td>
        <img src="https://vignette2.wikia.nocookie.net/rocketleague/images/b/b8/Player-Trading-GIF.gif/revision/latest?cb=20160907005753" alt="TradeInGIF"/>
    </td>
</tr>
</table>
</center>
</asp:Content>

