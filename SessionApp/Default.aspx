<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SessionApp.Default" %>

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
            Text="Save Session"
            OnClick="btnSave_Click" />

    </form>
</body>
</html>
