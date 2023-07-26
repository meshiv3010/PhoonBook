<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PhoneBook.aspx.cs" Inherits="PhoneBook.PhoneBook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            height: 9px;
            width: 1965px;
        }
        .auto-style28 {
            text-align: center;
            height: 41px;
            width: 1965px;
        }
        .auto-style46 {
            width: 423px;
        }
        .auto-style47 {
            width: 423px;
            text-align: center;
        }
        .auto-style51 {
            width: 100%;
        }
        .auto-style53 {
            text-align: center;
        }
        .auto-style54 {
            font-size: xx-large;
        }
        .auto-style55 {
            text-align: left;
        }
        .auto-style56 {
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table>
            <tr>
                <td class="auto-style28">
                    <table class="auto-style51">
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" BackColor="#CC99FF" CssClass="auto-style54" Text="Phone Book Aplication"></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <table>
                        <tr>
                            <td class="auto-style46">
                                <br />
                                <br />
                            </td>
                            <td class="auto-style47">
                                <br />
                                <br />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <table class="auto-style51">
                        <tr>
                            <td class="auto-style53">
                                <asp:Button ID="btn_LogOut" runat="server" Text="Log Out" />
                            </td>
                            <td class="auto-style53">
                                <asp:Button ID="Btn_Add" runat="server" Text="Add" OnClick="Btn_Add_Click" />
                            </td>
                            <td class="auto-style53">
                                <asp:Button ID="Btn_Update" runat="server" Text="Update" OnClick="Btn_Update_Click" />
                            </td>
                        </tr>
                    </table>
                    <br /> 
                    <br />
                    <br />
                    <table class="auto-style51">
                        <tr>
                            <td class="auto-style56">
                                <asp:TextBox ID="txt_fo_search_id" runat="server"></asp:TextBox>
                            </td>
                            <td class="auto-style55">
                                <asp:Button ID="Btn_Search" runat="server" Text="Search by ID" OnClick="Btn_Search_Click" />
                            </td>
                        </tr>
                    </table>
                    <br />
                </td>
            </tr>
        </table>
        <div>
            <br />
            <br />

        </div>

        <div class="auto-style53">

        <asp:GridView ID="GridView1" runat="server" Width="1248px"></asp:GridView>

        </div>

    </form>
</body>
</html>
