<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PhoneBook.PhoneBookGeneral" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            font-size: xx-large;
        }
        .auto-style4 {
            height: 34px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" BackColor="#CC99FF" CssClass="auto-style3" Height="40px" Text="Phone Book Aplication" Width="750px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Email Address:"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:TextBox ID="TxtBoxEmail" runat="server" Height="20px" Width="750px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtBoxEmail" ErrorMessage="Please enter email adress" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Password:"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TxtBoxPass" runat="server" Height="20px" Width="750px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ClientIDMode="Predictable" ControlToValidate="TxtBoxPass" ErrorMessage="Please enter Password" InitialValue="-1"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:RadioButton ID="RadioButton1" runat="server" Text="Remmber me" />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" BackColor="#9966FF" BorderColor="White" />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnSignUp" runat="server" Text="Sign Up" BackColor="#0099CC" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
