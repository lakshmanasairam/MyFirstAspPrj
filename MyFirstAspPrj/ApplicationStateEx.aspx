<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ApplicationStateEx.aspx.cs" Inherits="MyFirstAspPrj.ApplicationStateEx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Application State</h2>
            <h2>
                <asp:Label ID="LblWelcome" runat="server" Text=""></asp:Label>
            </h2>
            <h3>
                <asp:Label ID="LblStatus" runat="server" Text=""></asp:Label>
            </h3>
            <p>
                <asp:Label ID="LblStatusMessage" runat="server" Text=""></asp:Label>
            </p>
            <p>
                <asp:HyperLink ID="linkViewState" Text="Go To ViewState" NavigateUrl="~/ViewStateExample.aspx" runat="server">Go To ViewState</asp:HyperLink>
            </p>
        </div>
    </form>
</body>
</html>
