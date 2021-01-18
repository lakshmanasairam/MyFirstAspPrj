<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Viewform.aspx.cs" Inherits="MyFirstAspPrj.Viewform" %>

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
                    <td>
                        <asp:Label ID="Lbl1" runat="server" Text="Hello" EnableViewState="false"></asp:Label>
                    </td>
                    <td>
                    <asp:Label ID="Lbl2" runat="server" Text="Wellcome"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtName" runat="server" Text=""></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="CmdChange" runat="server" Text="Change" OnClick="CmdChange_Click" />
                    </td>
                    <td>
                        <asp:Button ID="CmdSubmit" runat="server" Text="Submit"  OnClick="CmdSubmit_Click"/>
                    </td>
                </tr>
                
            </table>
        </div>
    </form>
</body>
</html>
