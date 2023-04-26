<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sessionManagement.aspx.cs" Inherits="Validation_Control.Views.sessionManagement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Session management</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-color:seagreen;color:white;padding:20px">
            <center>
                <asp:Label runat="server" Text="SESSION STATE EXAMPLE" />
            </center>
        </div>
        <center>
            <div style="margin-top:20px">
                <asp:label runat="server" ID="totalVisit" style="color:red"/>
            </div>
            <div>
            <asp:Button runat="server" ID="visitIt" Text="Click to visit" style="background-color:green;color:white;padding:5px;margin-top:10px" OnClick="visitIt_Click"/>
        </div>
        </center>
    </form>
</body>
</html>
