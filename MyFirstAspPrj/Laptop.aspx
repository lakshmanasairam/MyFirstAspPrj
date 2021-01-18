<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/EXEcomerce.Master" CodeBehind="Laptop.aspx.cs" Inherits="MyFirstAspPrj.Laptop" %>

<asp:Content ID="ContentHead" runat="server" ContentPlaceHolderID="head"></asp:Content>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ChildContent">
        <div>
            <asp:Label ID="LblMessage" runat="server" Text=""></asp:Label>
            <asp:DataList ID="DlEcomerce" runat="server" HorizontalAlign="Left" RepeatDirection="Horizontal" CellPadding="3" CellSpacing="5" RepeatColumns="3" BorderStyle="Dotted">
                <ItemTemplate>
                    <div>
                        <asp:Image ImageUrl='<%#"~/EcomerceHandler2.ashx?Id="+Eval("id") %>' AlternateText="Image" runat="server" Width="200px" Height="100px" />
                    </div>
                    <div>
                        <label>Item Name:</label>
                        <asp:Label ID="LblItemname" runat="server" Text='<% #Eval("Itemname") %>'></asp:Label>
                    </div>
                    <div>
                        <label>Price:</label>
                        <asp:Label ID="LblPrice" runat="server" Text='<% #Eval("Price") %>'></asp:Label>
                    </div>
                    <div>
                        <label>CategoryName:</label>
                        <asp:Label ID="LblCategoryname" runat="server" Text='<% #Eval("CategoryName") %>'></asp:Label>
                    </div>
                    <div>
                        <label>Quantity:</label>
                        <asp:Label ID="LblQuantity" runat="server" Text='<% #Eval("Quantity") %>'></asp:Label>
                    </div>
                    <div>
                        <asp:Button ID="BtnBuy" runat="server" Text="Buy" />
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
</asp:content>

