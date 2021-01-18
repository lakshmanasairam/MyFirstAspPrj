<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MyFirstAspPrj.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button Text="submit" ID="CmdSubmit" runat="server" OnClick="CmdSubmit_Click" UseSubmitBehavior="false" /> 
            <br />
            <asp:Button ID="CmdSecondButton" runat="server" Text="Second Button" OnClick="CmdSecondButton_Click" UseSubmitBehavior="false" /> 
            <br />
            <asp:DropDownList ID="DdlColors" runat="server" onSelectedIndexChanged="DdlColors_SelectedIndexChanged" AutoPostBack="true">
                <asp:ListItem  Text="--Selected--" />
                <asp:ListItem Value="Red" Text="Red"></asp:ListItem>
                <asp:ListItem Value="Blue" Text="Blue"></asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:Label Text="" ID="LblMessage" runat="server" />
        </div>
        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
        <asp:Panel ID="panel1" runat="server" style="z-index: 1;"></asp:Panel>
    </form>
</body>
</html>
