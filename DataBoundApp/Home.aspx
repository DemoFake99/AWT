<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="DataBoundApp.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <h2>ASP.NET Data Bound Controls</h2>

        <h3>1. DropDownList</h3>
        <asp:DropDownList ID="ddlStudents" runat="server">
        </asp:DropDownList>

        <br />
        <br />

        <h3>2. GridView</h3>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>

        <br />

        <h3>3. Repeater</h3>
        <asp:Repeater ID="Repeater1" runat="server">
            <HeaderTemplate>
                <table border="1">
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Course</th>
                    </tr>
            </HeaderTemplate>

            <ItemTemplate>
                <tr>
                    <td><%# Eval("ID") %></td>
                    <td><%# Eval("Name") %></td>
                    <td><%# Eval("Course") %></td>
                </tr>
            </ItemTemplate>

            <FooterTemplate>
                </table>
           
            </FooterTemplate>
        </asp:Repeater>

    </form>
</body>
</html>
