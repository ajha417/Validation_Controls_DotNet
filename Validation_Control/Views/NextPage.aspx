<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NextPage.aspx.cs" Inherits="Validation_Control.Views.NextPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="Retrieve Value" OnClick="Button1_Click" />
        </div>
        <div style="margin-top:30px">
            <asp:Label runat="server" ID="username"/>
        </div>
    </form>
</body>
</html>
