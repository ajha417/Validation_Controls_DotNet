<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Validation_Control.Views.LoginPage" Theme="LoginTheme" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous"/>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center style="font-weight:bolder;font-size:20px">
                Login Page
            </center>
            <div class="form-group col-md-5" style="margin-left:50px">
                <div>
                    <asp:Label ID="email" runat="server">Username:</asp:Label>
                    <asp:TextBox runat="server" class="form-control" ID="emailID" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="emailID" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>

                </div>
                <div>
                    <asp:Label ID="pwd" runat="server">Passsword:</asp:Label>
                    <asp:TextBox runat="server" class="form-control" ID="password" TextMode="Password"/>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="password" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    <br />
                </div>
                <div>
                    <asp:Label runat="server" ID="InfoMsg" />
                </div>
                    <asp:Button ID="Login" runat="server" SkinID="blue" class="btn btn-success" Text="Button" OnClick="Login_Click" />
            </div>
        </div>
        
        
    </form>
</body>
</html>
