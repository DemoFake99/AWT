<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="MasterPageApp.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>About Our Organization</h2>
    <p>We are demonstrating the power of ASP.NET Master Pages.</p>
    <ul>
        <li><b>Master Page:</b> Controls the outer shell and layout.</li>
        <li><b>Content Pages:</b> Supply the unique data for each route.</li>
    </ul>
</asp:Content>
