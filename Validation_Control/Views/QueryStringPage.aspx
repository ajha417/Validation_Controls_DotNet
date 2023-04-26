<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QueryStringPage.aspx.cs" Inherits="Validation_Control.Views.QueryStringPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="value" runat="server" Text="Enter value" />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </div>
        <div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="sendIt" runat="server" Text="SEND" OnClick="sendIt_Click"  style="margin-top:20px"/>
        </div>
    </form>
</body>
</html>
