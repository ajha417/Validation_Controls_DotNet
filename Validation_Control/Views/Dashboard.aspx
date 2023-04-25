<%@ Page Title="" Language="C#" MasterPageFile="~/Views/UserMaster.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Validation_Control.Views.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <asp:Label ID="userInfo" runat="server" Text="Welcome"/>
    </center>
    <div class="container-fluid">
        <div class="row">
             <div class="col-md-4">
                 <h2 class="text-success">Book Details</h2>
                 <div class="form-group">
                     <asp:Label runat="server" >Book name</asp:Label>
                     <asp:TextBox ID="bname" runat="server" class="form-control"/>
                 </div>
                 <div class="form-group">
                     <asp:Label runat="server" >Author name</asp:Label>
                     <asp:TextBox ID="author" runat="server" class="form-control"/>
                 </div>
                 <div class="form-group">
                     <asp:Label runat="server" >Book Price</asp:Label>
                     <asp:TextBox ID="bprice" runat="server" class="form-control"/>
                 </div>
                 <div class="form-group">
                     <asp:Label runat="server" >Publication</asp:Label>
                     <asp:TextBox ID="publication" runat="server" class="form-control"/>
                 </div>
                 <div>
                     <asp:Button ID="addBtn" runat="server" Text="Add" class="btn btn-success" />
                     <asp:Button ID="updateBtn" runat="server" Text="Update" class="btn btn-warning" />
                     <asp:Button ID="deleteBtn" runat="server" Text="Delete" class="btn btn-danger" />
                 </div>
             </div>
            <div class="col-md-8">
                <asp:GridView ID="GridView1" runat="server"></asp:GridView>
            </div>
        </div>
    </div>
    
</asp:Content>
