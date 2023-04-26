<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="multiviewPage.aspx.cs" Inherits="Validation_Control.Views.multiviewPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-color:seagreen;color:white;padding:20px">
            <center>
                <asp:Label runat="server" Text="MULTI VIEW EXAMPLE" />
            </center>
        </div>
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem Value="0">Calendar</asp:ListItem>
                <asp:ListItem Value="1">Login</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div>
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                <asp:View ID="View1" runat="server">
                    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                </asp:View>
                <asp:View ID="View2" runat="server">

                    <asp:Login ID="Login1" runat="server"></asp:Login>
                </asp:View>
            </asp:MultiView>
        </div>
    </form>
</body>
</html>
