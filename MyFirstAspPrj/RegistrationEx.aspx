<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationEx.aspx.cs" Inherits="MyFirstAspPrj.RegistrationEx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td colspan="2">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Name</label>
                    </td>
                    <td>
                        <asp:TextBox ID="TXtName" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator Text="*" ForeColor ="Red" ID="RfvName" runat="server" ErrorMessage="Name Cannot be Blank" ControlToValidate="TxtName" ></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Email Id</label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtEmailid" runat="server" TextMode="Email" ></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator Text="*" ForeColor="Red" ID="RfvEmailid" runat="server" ErrorMessage="Email Id Can Not Be Blank" ControlToValidate="TxtEmailid"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator  Text="*" ID="RevEmailid" runat="server" ErrorMessage="Please Enter the correct email address" ControlToValidate="TxtEmailid" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Password</label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator Text="*" ID="RfvPassword" runat="server" ErrorMessage="Please Enter Correct password" ForeColor="Red" ControlToValidate="TxtPassword"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Confirm Password</label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:CompareValidator Text="*" ID="CvConfirmPassword" runat="server" ErrorMessage="Password and Confirm Password doesen't match" ControlToCompare="TxtPassword" ControlToValidate="TxtConfirmPassword" ForeColor="Red"></asp:CompareValidator>
                        <asp:RequiredFieldValidator Text="*" ID="RfvConfirmPassword" runat="server" ErrorMessage="Please check once" ControlToValidate="TxtConfirmPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>City</label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DdlCity" runat="server">
                            <asp:ListItem Value="-1">--Select--</asp:ListItem>
                            <asp:ListItem Value="Chennai">Chennai</asp:ListItem>
                            <asp:ListItem Value="Hyderabad">Hyderabad</asp:ListItem>
                            <asp:ListItem Value="Bengaluru">Bengaluru</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator Text="*" ID="RfvCity" runat="server" ErrorMessage="Please select a City" ControlToValidate="DdlCity" InitialValue="-1" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Age</label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtAge" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RangeValidator Text="*" ID="RvAge" runat="server" ErrorMessage="Age should be betwwen 18 and 60" ControlToValidate="TxtAge" ForeColor="Red" MaximumValue="60" MinimumValue="18" Type="Integer"></asp:RangeValidator>
                        <asp:RequiredFieldValidator Text="*" ID="RfvAge" runat="server" ErrorMessage="Please enter the correct age" ForeColor="Red" ControlToValidate="TxtAge"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Button ID="CmdSubmit" runat="server" Text="Register" />
                        <asp:Button ID="CmdReset" runat="server" Text="Reset"  />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
