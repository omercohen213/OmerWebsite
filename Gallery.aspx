<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="sidemenu">
      <ul>
          <li><a class="active" href="">Cars</a></li>
          <li><a href="">Art works</a></li>
          <li><a href="">Player's screenshots</a></li>
          <li><a href="">Some other stuff</a></li>
     </ul>
</div>
<center><h1 style="font-size:50px">גלריה</h1>
    <table>
        <tr>
            <th><img src="Images/Rocket league(1).jpg" class="images" class="images" alt="Rocket League" /></a></th>
            <th><img src="Images/Rocket league(2).jpg" class="images" class="images" alt="Rocket League" /></a></th>
        </tr>
        <tr>
            <th><img src="Images/Rocket league(3).jpg" class="images" class="images" alt="Rocket League" /></a></th>
            <th><img src="Images/Rocket league(4).jpg" class="images" class="images" alt="Rocket League" /></a></th>
        </tr>
    </table>
</center>
</asp:Content>

