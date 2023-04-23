<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="Validation_Control.Views.RegisterPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                Register Form with validation
            </center>
            <div class="form-inputs">
                <div>
                    <asp:Label runat="server">First Name</asp:Label>
                    <asp:TextBox ID="fname" runat="server" ></asp:TextBox>
                </div>
                <div>
                    <asp:Label runat="server">Last Name</asp:Label>
                    <asp:TextBox ID="lname" runat="server"></asp:TextBox>
                </div>
                <div>
                    <asp:Label runat="server">Password</asp:Label>
                    <asp:TextBox ID="password" TextMode="Password" runat="server"></asp:TextBox>
                </div>
                <div>
                    <asp:Label runat="server">Confirm Password</asp:Label>
                    <asp:TextBox ID="cpassword" runat="server"></asp:TextBox>
                </div>
                <div>
                    <asp:Label runat="server">Age</asp:Label>
                    <asp:TextBox ID="age" runat="server"></asp:TextBox>
                </div>
                <div>
                    <asp:Label runat="server">Mobile Number</asp:Label>
                    <asp:TextBox ID="mobile" TextMode="Number" runat="server"></asp:TextBox>
                </div>
                <div>
                    <asp:Label runat="server">Email Id</asp:Label>
                    <asp:TextBox ID="email" TextMode="Email" runat="server"></asp:TextBox>
                </div>
                <div>
                    <asp:Button ID="registerBtn" runat="server" Text="Register" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
