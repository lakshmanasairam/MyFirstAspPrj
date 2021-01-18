<%@ Page Language="C#"  AutoEventWireup="true" CodeBehind="DynamicMenu.aspx.cs" Inherits="MyFirstAspPrj.DynamicMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="content/Menu.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" ShowStartingNode="False" />
        <div>
            <asp:Menu ID="Menu1" runat="server" DataSourceID="SiteMapDataSource1" Orientation="Horizontal">
                <LevelMenuItemStyles>
                    <asp:MenuItemStyle CssClass="parent_menu" />
                </LevelMenuItemStyles>
                <DynamicMenuItemStyle CssClass="Child_menu" />
               <DynamicHoverStyle backcolor="Wheat" />
            </asp:Menu>
        </div>
    </form>
</body>
</html>
