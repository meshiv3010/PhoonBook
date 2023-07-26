<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddContact.aspx.cs" Inherits="PhoneBook.AddContact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 45px;
            width: 487px;
        }
        .auto-style2 {
            text-align: right;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style5 {
            width: 176px;
        }
        .auto-style6 {
            width: 487px;
            text-align: center;
        }
        .auto-style7 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center">
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label1" runat="server" BackColor="#CC99FF" CssClass="auto-style3" Height="40px" style="font-size: x-large" Text="Phone Book Aplication - Add Contact "></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <br />
                        <br />
                        <br />
                    </td>
                </tr>
            </table>
        </div>
        <table align="center" aria-atomic="False">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="First Name"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txt_firstName" runat="server" Width="168px" OnTextChanged="txt_firstName_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Last Name"></asp:Label>
                </td>
                <td class="auto-style5">
                    <br />
                    <br />
                    <asp:TextBox ID="txt_lastName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="Phone"></asp:Label>
                </td>
                <td class="auto-style5">
                    <br />
                    <br />
                    <asp:TextBox ID="txt_phone" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <br />
                    <asp:Label ID="Label6" runat="server" Text="Email"></asp:Label>
                </td>
                <td class="auto-style5">
                    <br />
                    <br />
                    <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="Btn_SaveNewContact" runat="server" OnClick="Btn_SaveNewContact_Click" Text="Save" />
        <asp:Label ID="lbl_massege" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <table class="auto-style3">
            <tr>
                <td class="auto-style7">
                    <asp:Button ID="btn_Return_to_phone_book" runat="server" OnClick="btn_Return_to_phone_book_Click" Text="Return to phone book web" Width="264px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
