<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Garage.aspx.cs" Inherits="Garage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="sidemenu">
      <ul>     
          <li><a href="">Decals</a></li>
          <li><a href="">Paint</a></li>
          <li><a href="">Wheels</a></li>
          <li><a href="">Rocket Trails</a></li>
          <li><a href="">Toppers</a></li>
          <li><a href="">Antennas</a></li>
     </ul>
</div>
<center>    
<div class="All">
    <div class="Wrapper">
        <div class="div1-WithMarginBottom">Garage-Vehicles:</div>
        <div id="ItemDisplayArea" class="row">
            <div id="Cell1" class="Cell">
                <img src="Images/Octane.png" alt="Octane"/>
                <h2>Octane</h2>
                <div class="ItemRarity Common">Common</div>
            </div>
            <div id="Cell2" class="Cell">
                <img src="Images/X-Devil.png" alt="X-Devil"/>
                <h2>X-Devil</h2>
                <div class="ItemRarity Common">Common</div>
            </div>    
            <div id="Cell3" class="Cell">
                <img src="Images/X-Devil.png" alt="X-Devil"/>
                <h2>X-Devil</h2>
                <div class="ItemRarity Common">Common</div>
            </div>    
        </div>
     </div>
</div>
</center>
</asp:Content>

