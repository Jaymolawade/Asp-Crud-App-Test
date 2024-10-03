<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeDetailsPage.aspx.cs" Inherits="CrudApp.EmployeeDetailsPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 247px;
        }
        .auto-style4 {
            width: 247px;
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
        }
        .auto-style7 {
            width: 149px;
        }
        .auto-style8 {
            width: 149px;
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="font-size:large;font-weight:bolder" align="center">Employee Details Web Application</div>
        <br />
        <br />
        <br />
        <br />

        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style7">Employee Id</td>
                <td>
                    <asp:TextBox ID="TxtId" runat="server" Font-Size="Medium" Width="245px"></asp:TextBox>
                &nbsp;
                    <asp:Button ID="Button5" runat="server" BackColor="#3399FF" BorderColor="Black" BorderStyle="Groove" Font-Bold="True" Font-Italic="False" Font-Size="Medium" Height="40px" Text="Get Details" Width="115px" onClick="Button5_Click"/>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style8">Employee Name</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TxtName" runat="server" Font-Size="Medium" Width="245px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style7">Email</td>
                <td>
                    <asp:TextBox ID="TxtMail" runat="server" Font-Size="Medium" Width="245px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style7">State</td>
                <td>
                    <asp:DropDownList ID="TxtDropDownList" runat="server">
                        <asp:ListItem>Maharashtra</asp:ListItem>
                        <asp:ListItem>Madhya Pradesh</asp:ListItem>
                        <asp:ListItem>Chennai</asp:ListItem>
                        <asp:ListItem>Odisha</asp:ListItem>
                        <asp:ListItem>Gujrat</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style7">Salary</td>
                <td>
                    <asp:TextBox ID="TxtSal" runat="server" Font-Size="Medium" Width="245px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" BackColor="#3399FF" BorderColor="Black" BorderStyle="Groove" Font-Bold="True" Font-Italic="False" Font-Size="Medium" Height="40px" Text="Insert" Width="103px" onClick="Button1_Click"/>
                &nbsp;
                    <asp:Button ID="Button2" runat="server" BackColor="#3399FF" BorderColor="Black" BorderStyle="Groove" Font-Bold="True" Font-Italic="False" Font-Size="Medium" Height="40px" Text="Update" Width="103px" onClick="Button2_Click"/>
                &nbsp;
                    <asp:Button ID="Button3" runat="server" BackColor="#3399FF" BorderColor="Black" BorderStyle="Groove" Font-Bold="True" Font-Italic="False" Font-Size="Medium" Height="40px" Text="Delete" Width="103px" onClick="Button3_Click" OnClientClick="return confirm('are you sure want to delete this record?');"/>
                &nbsp;
                    <asp:Button ID="Button4" runat="server" BackColor="#3399FF" BorderColor="Black" BorderStyle="Groove" Font-Bold="True" Font-Italic="False" Font-Size="Medium" Height="40px" Text="Search" Width="103px" onClick="Button4_Click"/>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>
                    <asp:GridView ID="GridView1" runat="server" Width="914px">
                    </asp:GridView>
                </td>
            </tr>
        </table>

    </form>
</body>
</html>
