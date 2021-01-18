<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="example.aspx.cs" Inherits="MyFirstAspPrj.example" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="content/site.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>sign In page</h1>
            <table>
                <tr>
                    <td><label>Email Id</label>   </td>
                    <td>
                        <asp:TextBox ID="TxtEmailid" runat="server" placeholder="abc@gmail.com" autocomplete="off"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Password</label>
                    </td>
                   <td>
                       <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password"></asp:TextBox>

                   </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="CmdSignIn" runat="server" Text="Sign In" OnClick="CmdSignIn_Click" />
                    </td>
                   
                </tr>
                <tr>
                    <td colspan="2" >
                        <asp:Label ID="LblMessage" runat="server" ></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
