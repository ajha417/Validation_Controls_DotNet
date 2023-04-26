<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewStatePage.aspx.cs" Inherits="Validation_Control.Views.ViewStatePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </div>
        <div style="margin-top:10px;">
            <asp:Button ID="clearIt" runat="server" Text="CLEAR" style="margin-right:10px" OnClick="clearIt_Click"/>
            <asp:Button ID="diplayIt" runat="server" Text="DISPLAY" OnClick="diplayIt_Click" />
        </div>
    </form>
</body>
</html>
