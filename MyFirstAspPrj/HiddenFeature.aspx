<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HiddenFeature.aspx.cs" Inherits="MyFirstAspPrj.HiddenFeature" %>

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
                        <asp:TextBox ID="TxtWorkDays" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <input type="hidden" id="TxtGrade" runat="server"  value="200"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="CmdSubmit" runat="server" Text="Calculate"  OnClick="CmdSubmit_Click"/>
                    </td>
                    <td>
                        <asp:Label ID="lblSalary" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
