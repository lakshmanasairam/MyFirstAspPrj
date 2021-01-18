<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ecomerce.aspx.cs" Inherits="MyFirstAspPrj.AddItem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="content/site.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <asp:ValidationSummary ID="ValidationSummary" runat="server" ForeColor="Red" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>ItemName</label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtItemname" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RfvItemName" runat="server" ErrorMessage="Please Give Item Name" ControlToValidate="TxtItemname" ForeColor="Red" Text="*"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>
                        <label>DesCription</label></td>
                    <td>
                        <asp:TextBox ID="TxtDescription" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RfvDesCription" runat="server" ErrorMessage="!!" ForeColor="Red" ControlToValidate="TxtDescription" Text="*"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>
                        <label>Price</label></td>
                    <td>
                        <asp:TextBox ID="TxtPrice" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RfvPrice" runat="server" ErrorMessage="Price Should be in Indian Currency" ControlToValidate="TxtPrice" ForeColor="Red" Text="*"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>
                        <label>Quantity</label></td>
                    <td>
                        <asp:TextBox ID="TxtQuantity" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="Quantity" runat="server" ErrorMessage="!!" ControlToValidate="TxtQuantity" ForeColor="Red" Text="*"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>
                        <label>Image</label></td>
                    <td>
                        <asp:FileUpload ID="FileUploadImage" runat="server" /></td>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        <label>CategoryName</label></td>
                    <td style="text-align: left">
                        <asp:DropDownList ID="DdlCategory" runat="server">
                            <asp:ListItem Value="0" Text="SELECT"></asp:ListItem>
                            <asp:ListItem Value="Cloths" Text="Clothes"></asp:ListItem>
                            <asp:ListItem Value="Mobiles" Text="Mobiles"></asp:ListItem>
                            <asp:ListItem Value="HomeAccessoris" Text="HomeAcce"></asp:ListItem>
                            <asp:ListItem Value="Laptops" Text="Laptop"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        <label>Colour</label></td>
                    <td style="text-align: left">
                        <asp:DropDownList ID="DdlColour" runat="server">
                            <asp:ListItem Value="0" Text="SELECT"></asp:ListItem>
                            <asp:ListItem>Black</asp:ListItem>
                            <asp:ListItem>White</asp:ListItem>
                            <asp:ListItem>Silver</asp:ListItem>
                            <asp:ListItem>Green</asp:ListItem>
                            <asp:ListItem>Brown</asp:ListItem>
                            <asp:ListItem>Blue</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Button ID="CmdSubmit" runat="server" Text="ADD ITEM" Height="30px" Width="100px" OnClick="CmdSubmit_Click" />
                        <asp:Button ID="BtnReset" runat="server" Text="RESET" Height="30px" Width="100px" OnClick="BtnReset_Click" CausesValidation="False" UseSubmitBehavior="False" />
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Label ID="LblStatus" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>

            </table>
        </div>
    </form>
</body>
</html>
