<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MyFirstAspPrj.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server" Width="154px" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
         <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-left: 313px" Text="Button" Width="135px" />
        </div>
    </form>
</body>
</html>
