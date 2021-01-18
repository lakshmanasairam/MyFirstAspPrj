<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SigninAndLogin.aspx.cs" Inherits="MyFirstAspPrj.Signin_And_Login" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="content/StyleSheet3.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container" style="width: 1200px; height: 600px;">
                <div>
                    <div class="signin" style="width: 400px; height: 300px; float: left; margin: auto">

                        <h3>New User</h3>
                        <div style="margin-top: 30px">
                             <asp:ValidationSummary ID="ValidationSummary1" ValidationGroup="NewUser" runat="server" ForeColor="Red"/>
                        </div>
                        <div style="margin-top: 30px">
                            <label>Firstname</label>
                        </div>
                        <div>
                            <asp:TextBox ID="TxtFirstname" ValidationGroup="NewUser" runat="server"></asp:TextBox>
                        </div>
                        <div>
                            <asp:RequiredFieldValidator ID="RfvFirstname" ValidationGroup="NewUser" runat="server" ErrorMessage="Please Enter the name" Text="*" ForeColor="Red" ControlToValidate="TxtFirstname"></asp:RequiredFieldValidator>
                        </div>
                        <div style="margin-top: 30px">
                            <label>Lastname</label>
                        </div>
                        <div>
                            <asp:TextBox ID="TxtLastname" ValidationGroup="NewUser" runat="server"></asp:TextBox>
                        </div>
                        <div style="margin-top: 30px">
                            <label>UserId</label>
                        </div>
                        <div>
                            <asp:TextBox ID="TxtUserid" ValidationGroup="NewUser" runat="server"></asp:TextBox>
                        </div>
                        <div>
                            <asp:RequiredFieldValidator ID="RfvUserid" runat="server" ErrorMessage="Please Choose User Id" Text="*" ControlToValidate="TxtUserid" ForeColor="Red" ValidationGroup="NewUser"></asp:RequiredFieldValidator>
                        </div>
                        <div style="margin-top: 30px">
                            <label>Password</label>
                        </div>
                        <div>
                            <asp:TextBox ID="TxtPassword" ValidationGroup="NewUser" runat="server" TextMode="Password"></asp:TextBox>
                        </div>
                        <div>
                            <asp:RequiredFieldValidator ID="RfvPassword" runat="server" ErrorMessage="Please Enter Password" Text="*" ControlToValidate="TxtPassword" ValidationGroup="NewUser" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div style="margin-top: 30px">
                            <asp:Button ID="BtnSubmit" runat="server" ValidationGroup="NewUser" Text="Submit" OnClick="BtnSubmit_Click" />
                        </div>
                        <div style="margin-top: 30px">
                            <asp:Label ID="LblStatus" runat="server" Text="" ForeColor="Green"></asp:Label>
                        </div>
                    </div>
                </div>


                <div>
                    <div class="login" style="width: 400px; height: 300px; float: left; margin: auto">

                        <h3>Login As User</h3>
                        <div style="margin-top: 30px">
                            <label>user id</label>
                        </div>
                        <div>
                            <asp:textbox id="Txtuserid1" validationgroup="loginuser" runat="server"></asp:textbox>
                        </div>
                        <div style="margin-top: 30px">
                            <label>Password</label>
                        </div>
                        <div>
                            <asp:TextBox ID="TxtPassword1" runat="server" ValidationGroup="LoginUser" TextMode="Password"></asp:TextBox>
                        </div>
                        <div style="margin-top: 30px">
                            <asp:Button ID="BtnSubmit1" runat="server" ValidationGroup="LoginUser" Text="Login" OnClick="BtnSubmit1_Click" />
                        </div>
                        <div style="margin-top: 30px">
                            <asp:Label ID="LblAsUser" runat="server" Text="" ForeColor="Red"></asp:Label>
                        </div>
                    </div>
                </div>

                <div>
                    <div class="loginasemployee" style="width: 400px; height: 300px; float: left; margin: auto">
                        <h3>Login As Employee</h3>
                        <%--<div style="margin-top: 30px">
                            <label>Id</label>
                        </div>
                        <div>
                            <asp:TextBox ID="TxtId"  ValidationGroup="LoginEmployee" runat="server"></asp:TextBox>
                        </div>--%>
                        <div style="margin-top: 30px">
                            <label>UserName</label>
                        </div>
                        <div>
                            <asp:TextBox ID="TxtUsername" ValidationGroup="LoginEmployee" runat="server"></asp:TextBox>
                        </div>
                        <div style="margin-top: 30px">
                            <label>Passwords</label>
                        </div>
                        <div>
                            <asp:TextBox ID="TxtPasswords" runat="server" ValidationGroup="LoginEmployee" TextMode="Password"></asp:TextBox>
                        </div>
                        <div>
                            <asp:Label ID="Lbl1" runat="server" Text="" ForeColor="Red"></asp:Label>
                        </div>
                        <div style="margin-top: 30px">
                            <asp:Button ID="BtnSubmit2" runat="server" ValidationGroup="LoginEmployee" Text="Submit" OnClick="BtnSubmit2_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>


