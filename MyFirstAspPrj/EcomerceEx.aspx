<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EcomerceEx.aspx.cs" Inherits="MyFirstAspPrj.EcomerceEx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
</head>
<body>
    <form id="form1" runat="server">
        <div class="container" style="width:1200px;height:1000px; margin:auto;" >
            <header id="logo" style="width:300px;height:100px;background-color:white;float:left">
            <img src="images/Screenshot (292).png" style="width:300px;height:100px;float:left"/>
            </header>
            <div ="Searchbutton"style="width:500px;height:100px;background-color:red;float:left">
                <asp:TextBox Placeholder="Search Products" ID="TxtSearchButton" runat="server" CssClass="text-search" Height="25px" Width="350px" Rows="0" ></asp:TextBox>
                <asp:Button ID="BtnSearchButton" runat="server" Text="Button" CssClass="button-search" BorderColor="Pink" Height="25px" Width="100px"  Font-Names="Arial" />
                <link href="content/StyleSheet1.css" rel="stylesheet" />
             </div>
        </div>
    </form>
</body>
</html>
