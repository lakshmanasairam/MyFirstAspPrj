<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="MyFirstAspPrj.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DataList ID="Dlproduct" runat="server" GridLines="Both" RepeatColumns="3" RepeatDirection="Horizontal" >
                <ItemTemplate>
                    <div>
                        <asp:Image Width="100" Height="100" ID="ImgProduct" runat="server" ImageUrl='<%#"~/Handler1.ashx?Id="+Eval("Id") %>' />
                    </div>
                    <div>
                        <asp:Label ID="LblProductName" runat="server" Text='<%#Eval("productName") %>' ></asp:Label>
                    </div>
                    <div>
                        <label>Price</label><asp:Label ID="LblPrice" runat="server" Text='<%#Eval("Price") %>' ></asp:Label>
                    </div>
                    <div>
                        <label>Quantity</label><asp:Label ID="LblQuantity" runat="server" Text='<%#Eval("Quantity") %>' ></asp:Label>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </form>
</body>
</html>
