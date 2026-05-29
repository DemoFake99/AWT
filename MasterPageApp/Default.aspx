<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MasterPageApp._Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Welcome to the Home Page!</h2>
    <p>This specific text is being loaded dynamically inside the Master Page's content area.</p>
    <p>Notice how you didn't have to rewrite the header, menu, or footer in this file.</p>
</asp:Content>