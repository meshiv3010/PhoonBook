<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="PhoneBook.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            font-size: xx-large;
        }
        .auto-style4 {
            height: 44px;
            text-align: center;
        }
        .auto-style5 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label1" runat="server" BackColor="#CC99FF" CssClass="auto-style3" Height="40px" Text="Phone Book Aplication - Sign Up" Width="750px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Email Address:"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="750px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Password:"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="750px"></asp:TextBox>
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Button ID="Button1" runat="server" BackColor="#0099CC" Text="Sign Up" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
