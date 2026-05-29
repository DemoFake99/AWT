<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CookieApp.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        Enter Name:
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>

        <br /><br />

        <asp:Button ID="btnSave" runat="server"
            Text="Save in Cookie"
            OnClick="btnSave_Click" />

        <br /><br />

        <asp:Label ID="lblMessage" runat="server"></asp:Label>

    </form>
</body>
</html>
