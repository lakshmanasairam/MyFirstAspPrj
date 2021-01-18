<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manager.aspx.cs" Inherits="MyFirstAspPrj.Manager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" OnRowDeleting="GridView1_RowDeleting" >
            <Columns>
                <asp:ButtonField ButtonType="Button" CommandName="Delete" Text="Block User"  />
            </Columns>
        </asp:GridView>
        <div>
            <asp:Label ID="Lbl1" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
