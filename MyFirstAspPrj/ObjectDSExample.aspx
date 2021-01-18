<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ObjectDSExample.aspx.cs" Inherits="MyFirstAspPrj.ObjectDSExample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetEmployyeData" OnSelecting="ObjectDataSource1_Selecting" TypeName="MyFirstAspPrj.App_Code.HRDataSource"></asp:ObjectDataSource>
            <asp:GridView ID="GridView1" runat="server" DataSourceID="ObjectDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"></asp:GridView>
        </div>
    </form>
</body>
</html>
