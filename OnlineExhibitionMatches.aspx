<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="OnlineExhibitionMatches.aspx.cs" Inherits="OnlineExhibitionMatches" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<div class="div1-WithMarginBottom">Online Exhibition Matches</div>
<div class="NormalDiv">
Playlists are the list of available queues for various public online match types. There are two types of playlists: Casual and <a href="Competetive.aspx">Competitive</a>.
Playlists attempt to queue players of a similar skill level against each other, but the matchups will vary depending on the volume of available players in that playlist.
See the Platforms page for information on how to queue with friends across different platforms.
</div>
<div class="div1-WithMarginBottom">Casual</div>
<table class="NormalDiv">
    <tr>
        <td>
            Below is the list of available Casual playlists:<br /> <br />
            Duel (1v1) <br />
            Doubles (2v2) <br />
            Standard (3v3) <br />
            Chaos (4v4) <br />
            Snow Day (3v3; added on December 14th, 2015) <br />
            Rocket Labs (3v3) <br />
            Hoops (2v2; added on April 26th, 2016) <br />
            Rumble (3v3; added on September 8th, 2016) <br />
            Dropshot (3v3; added on March 22nd, 2017) <br />  <br />
            Casual playlists also included Mutator Mashup, added on November 9th, 2015, a playlist consisting of a 3v3 match played with any of the available mutator presets (excluding Demolition). Mutator Mashup was removed on December 14th, 2015, most likely in favor of Snow Day.
        </td>
        <td>
        <img src="Images/Casual.PNG"/>
        </td>
    </tr>
</table>
<div class="div1-WithMarginBottom"><a href="Competetive.aspx">Competetive</a></div>
<table class="NormalDiv">
    <tr> 
        <td>
            Below is the list of available Competitive playlists:<br />
            Solo Duel (1v1) <br />
            Doubles (2v2) <br />
            Solo Standard (3v3) <br />
            Standard (3v3) <br />
            Each Competitive playlist has a tier logo on the left side of the playlist bar. The tiers are tracked separately for each playlist.
            Click here for more information about <a href="Competetive.aspx">Competetive</a>.
        </td>
        <td>
        <img src="Images/Competetive.PNG"/>
        </td>
    </tr>
</table>
</center>
</asp:Content>

