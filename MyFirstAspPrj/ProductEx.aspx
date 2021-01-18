<%@ Page Language="C#" MasterpageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ProductEx.aspx.cs" Inherits="MyFirstAspPrj.ProductEx" %>

<asp:Content ID="ContentHead" runat="server" ContentPlaceHolderID="head"></asp:Content>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ChildContent">
           <div id="container">
               <div id="top">
            <table>
                <tr>
                    <td>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Product Name</label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtProductname" runat="server" ></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RfvProductname" runat="server" ErrorMessage="Product Name can not be blank" ControlToValidate="TxtProductname" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Description</label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtDescription" TextMode="MultiLine" runat="server" ></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RfvDescription" runat="server" ErrorMessage="Please Enter a Description" ControlToValidate="TxtDesCription" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Category</label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DdlCategory" runat="server">
                            <asp:ListItem Value="0" Text="--Select--"></asp:ListItem>
                            <asp:ListItem Value="Appliences" Text="Appliences"></asp:ListItem>
                            <asp:ListItem Value="sofa" Text="sofa"></asp:ListItem>
                            <asp:ListItem Value="MobileNo" Text="Mno"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RfvDdlCategory" runat="server" ErrorMessage="Please Selct a Category" ControlToValidate="DdlCategory" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Price</label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtPrice" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RfvPrice" runat="server" ErrorMessage="Price Is Fixed" ControlToValidate="TxtPrice" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RvPrice" runat="server" ErrorMessage="Please give exact amount" ControlToValidate="TxtPrice" MaximumValue="100000" Minimumvalue="0" ForeColor="Red" Type="Integer" ></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Quantity</label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtQuantity" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RfvQuantity" runat="server" ErrorMessage="Choose The Quantity" ControlToValidate="TxtQuantity" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RvQuantity" runat="server" ErrorMessage="please choose the quantity b/w 1 and 20" ControlToValidate="TxtQuantity" MaximumValue="20" MinimumValue="0" forecolor="Red" Type="Integer"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Image</label>
                    </td>
                    <td>
                        <asp:FileUpload ID="FileUploadImage" runat="server" />
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Button ID="CmdAddnew" runat="server" Text="Submit" OnClick="CmdAddnew_Click" />
                        <asp:Button ID="BtnReset" runat="server" Text="Reset" CausesValidation="false" UseSubmitBehavior="false" OnClick="BtnReset_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                    <asp:Label ID="LblStatus" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>
        <div id="bottom">
            <asp:GridView ID="GvProduct" runat="server" ></asp:GridView>
        </div>
          </div>
   </div>
</asp:Content>
