<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ArenaPreferences.aspx.cs" Inherits="ArenaPreferences" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
    <div class="div1-WithMarginBottom">Description:</div>
    <table class="NormalDiv">
        <tr>
            <td>
            An “Arenas” button has been added to the Playlist menu that allows players to “Like” or “Dislike” specific maps. “Liking” an arena increases the odds that you will play it in online matches, while “Disliking” has the opposite effect.
            When a server chooses the next Arena, the servers factors in the preferences of all connected players. A map is less likely to be chosen if multiple players “Dislike” said map. Your preferences are applied to all Playlists by default. You can however setup custom “Likes” and “Dislikes” that can be changed on each Playlist.
            As of Patch v1.31 Preference weighting has been updated to be simpler. A map’s odds are now changed based on the net percentage of the lobby who like or dislike a map. <br /> <br />
            If all players in a lobby Dislike a map, it will now never appear. <br />
            If half of the players in a lobby Like a map, it will appear 50% more often.<br />
            If one player Likes a map and another player Dislikes it, it will appear as often as normal.<br />
            </td>
            <td>
                <img  src="Images/ArenaPref.jpg" alt="ArenaPreferences" />
            </td>
        </tr>
    </table>
    
    
</center>
</asp:Content>

