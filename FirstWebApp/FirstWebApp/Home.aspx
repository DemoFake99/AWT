<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="FirstWebApp.Home" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Organization Registration</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table border="1" cellpadding="5" cellspacing="0">
                <tr>
                    <th colspan="3">Organization Registration Form</th>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Please fix the following errors:" />
                    </td>
                </tr>
                <tr>
                    <td>Name : </td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="Name is required.">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>E-Mail : </td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required." Display="Dynamic">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ValidationExpression="^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$" ErrorMessage="Invalid Email format." Display="Dynamic">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Date of Birth : </td>
                    <td>
                        <asp:Calendar ID="calDOB" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                            <TodayDayStyle BackColor="#CCCCCC" />
                        </asp:Calendar>
                    </td>
                    <td>
                        <asp:CustomValidator ID="cvDOB" runat="server" ErrorMessage="Please select a Date of Birth." OnServerValidate="cvDOB_ServerValidate">*</asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td>Gender : </td>
                    <td>
                        <asp:RadioButtonList ID="rblGender" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                            <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvGender" runat="server" ControlToValidate="rblGender" ErrorMessage="Gender is required.">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Department : </td>
                    <td>
                        <asp:DropDownList ID="ddlDepartment" runat="server">
                            <asp:ListItem Text="-- Select Department --" Value=""></asp:ListItem>
                            <asp:ListItem Text="IT & Engineering" Value="IT"></asp:ListItem>
                            <asp:ListItem Text="Human Resources" Value="HR"></asp:ListItem>
                            <asp:ListItem Text="Marketing & Sales" Value="Marketing"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvDepartment" runat="server" ControlToValidate="ddlDepartment" InitialValue="" ErrorMessage="Department is required.">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Technical Skills : </td>
                    <td>
                        <asp:CheckBoxList ID="cblSkills" runat="server">
                            <asp:ListItem Text="C#" Value="C#"></asp:ListItem>
                            <asp:ListItem Text="ASP.NET" Value="ASP.NET"></asp:ListItem>
                            <asp:ListItem Text="SQL Server" Value="SQL Server"></asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                    <td>
                        <asp:CustomValidator ID="cvSkills" runat="server" ErrorMessage="Please select at least one technical skill." OnServerValidate="cvSkills_ServerValidate">*</asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:CheckBox ID="chkTerms" runat="server" Text=" I agree to the organization's terms and conditions." />
                    </td>
                    <td>
                        <asp:CustomValidator ID="cvTerms" runat="server" ErrorMessage="You must agree to the terms and conditions." OnServerValidate="cvTerms_ServerValidate">*</asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" align="center">
                        <asp:Button ID="btnSubmit" runat="server" Text="Register Employee" OnClick="btnSubmit_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="3" align="center">
                        <asp:Label ID="lblMessage" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>