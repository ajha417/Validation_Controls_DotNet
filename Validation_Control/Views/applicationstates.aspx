<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="applicationstates.aspx.cs" Inherits="Validation_Control.Views.applicationstates" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-color:seagreen;color:white;padding:20px">
            <center>
                <asp:Label runat="server" Text="APPLICATION STATE EXAMPLE" />
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
