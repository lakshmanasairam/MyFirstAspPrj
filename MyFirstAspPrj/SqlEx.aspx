<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SqlEx.aspx.cs" Inherits="MyFirstAspPrj.SqlEx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HRConnectionString %>" SelectCommand="SELECT [cEmployeeCode], [vFirstName], [cCity], [dBirthDate] FROM [Employee]" UpdateCommand="Update Employee Set vFirstName=@vFirstName,cCity=@cCIty where cEmployeeCode=@cEmployeeCode">
                <UpdateParameters>
                    <asp:Parameter Name="vFirstName" />
                    <asp:Parameter Name="cCIty" />
                    <asp:Parameter Name="cEmployeeCode" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cEmployeeCode" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" PageSize="5">
                <Columns>
                    <asp:BoundField DataField="vFirstName" HeaderText="vFirstName" SortExpression="vFirstName" />
                    <asp:BoundField DataField="cCity" HeaderText="cCity" SortExpression="cCity" />
                    <asp:BoundField DataField="dBirthDate" HeaderText="dBirthDate" SortExpression="dBirthDate" />
                    <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
