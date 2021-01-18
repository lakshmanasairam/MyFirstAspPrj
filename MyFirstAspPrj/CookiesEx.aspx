<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CookiesEx.aspx.cs" Inherits="MyFirstAspPrj.CookiesEx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td><label>User Name</label></td>
                    <td>
                        <asp:TextBox ID="TxtUsername" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><label>Password</label></td>
                    <td>
                        <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2" >
                        <asp:Button ID="CmdSignin" runat="server" Text="Sigin In" OnClick="CmdSignin_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:CheckBox Text="Remember Me" ID="ChkRememberme" runat="server" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
