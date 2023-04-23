<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="Validation_Control.Views.RegisterPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center class="mt-6" style="font-weight:bolder;font-size:20px;margin-top:30px">
                Register Form with validation
            </center>
            <div class="form-group col-md-5" style="margin-left:420px;margin-top:50px">
                <div>
                    <asp:Label runat="server" class="form-label">First Name</asp:Label>
                    <asp:TextBox ID="fname" runat="server" class="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="fname" ErrorMessage="First Name is empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div>
                    <asp:Label runat="server" class="form-label">Last Name</asp:Label>
                    <asp:TextBox ID="lname" runat="server" class="form-control"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="lname" ErrorMessage="Last Name is empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div>
                    <asp:Label runat="server" class="form-label">Password</asp:Label>
                    <asp:TextBox ID="password" TextMode="Password" runat="server" class="form-control"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="password" ErrorMessage="Password is empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div>
                    <asp:Label runat="server" class="form-label">Confirm Password</asp:Label>
                    <asp:TextBox ID="cpassword" runat="server" class="form-control"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="cpassword" ErrorMessage="Confirm Password is empty" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="password" ControlToValidate="cpassword" ErrorMessage="confirm password didn't match" ForeColor="Red"></asp:CompareValidator>
                </div>
                <div>
                    <asp:Label runat="server" class="form-label">Age</asp:Label>
                    <asp:TextBox ID="age" runat="server" class="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="age" ErrorMessage="Age is empty" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="age" ErrorMessage=">=18 and <=40" MinimumValue="18" MaximumValue="40" ForeColor="Red" Type="Integer"></asp:RangeValidator>

                </div>
                <div>
                    <asp:Label runat="server">Mobile Number</asp:Label>
                    <asp:TextBox ID="mobile" TextMode="Number" runat="server" class="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="mobile" ErrorMessage="Mobile Number is empty" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="mobile" ErrorMessage="Invalid mobile number" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                </div>
                <div>
                    <asp:Label runat="server" class="form-label">Email Id</asp:Label>
                    <asp:TextBox ID="email" TextMode="Email" runat="server" class="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="email" ErrorMessage="Email Field is empty" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="email" runat="server" ErrorMessage="Invalid email id" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </div>
                <div>
                    <asp:Button ID="registerBtn" runat="server" Text="Register" class="btn btn-primary col-md-5 mt-3"/>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
