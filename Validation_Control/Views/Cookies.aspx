<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cookies.aspx.cs" Inherits="Validation_Control.Views.Cookies" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin:10px">
            <asp:Button ID="createIt" runat="server" Text="Create Cookie" style="margin-right:10px" OnClick="createIt_Click"/>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Label ID="InfoMsg" runat="server" />
        </div>
        <div>
            <asp:Button ID="retrieveIt" runat="server" Text="Retrieve Cookie" OnClick="retrieveIt_Click" />
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </div>
    </form>
</body>
</html>
