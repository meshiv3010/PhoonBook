<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateContact.aspx.cs" Inherits="PhoneBook.UpdateContact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style6 {
            text-align: left;
            height: 22px;
        }
        .auto-style7 {
            text-align: left;
            height: 28px;
        }
        .auto-style8 {
            text-align: right;
            width: 487px;
        }
        .auto-style9 {
            text-align: right;
            height: 22px;
            width: 487px;
        }
        .auto-style10 {
            text-align: right;
            height: 28px;
            width: 487px;
        }
        .auto-style11 {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style4">
                        <asp:Label ID="Label1" runat="server" BackColor="#CC99FF" CssClass="auto-style3" Height="40px" style="font-size: x-large" Text="Phone Book Aplication - Add Contact "></asp:Label>
        </div>
        <br />
        <br />
        <br />
        <table>
            <tr>
                <td>
                    <asp:Label ID="lbl_enter_id" runat="server" Text="Enter ID for Update"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_id_for_update" runat="server" OnTextChanged="txt_id_for_update_TextChanged"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Btn_search_id" runat="server" Text="Search" />
                </td>
            </tr>
        </table>
        <br />
        <br />
        <table align="center" class="auto-style3">
            <tr>
                <td class="auto-style10">
                    <asp:Label ID="Label2" runat="server" Text="First Name"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="txt_firstName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label3" runat="server" Text="Last Name"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txt_lastName" runat="server"></asp:TextBox>
                </td>
            </tr>
              <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label6" runat="server" Text="Phone"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txt_phone" runat="server"></asp:TextBox>
                  </td>
            </tr>
              <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label7" runat="server" Text="Email"></asp:Label>
                    <br />
                    <br />
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
                    <br />
                    <br />
                  </td>
            </tr>
              <tr>
                <td class="auto-style8">
                    <asp:Button ID="Btn_update" runat="server" Text="Update" OnClick="Btn_update_Click" />
                    <br />
                    <asp:Label ID="lbl_massege" runat="server"></asp:Label>
                    <br />
                    <br />
                    <br />
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
              <tr>
                <td class="auto-style4" colspan="2">
                    <asp:Button ID="Btn_ReturnPhoneBook" runat="server" Text="Return to phone book web" OnClick="Btn_ReturnPhoneBook_Click" />
                </td>
            </tr>
            </table>
    </form>
</body>
</html>
