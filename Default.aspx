<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
        <div id="maindiv" style="overflow: hidden">
               <h1 id="marquee"> <%=mymassege%></h1>
        </div>
         <div class="maindiv2" style="overflow: hidden">
               <h1 id="marquee1"> In this web site you can find information about the game Rocket League and some other stuff.</h1>
        </div>
         <div class="maindiv2" style="overflow: hidden">
             <h1 id="marquee2">Have fun!</h1>
        </div>
    </center>
    <table ></table>
</asp:Content>

