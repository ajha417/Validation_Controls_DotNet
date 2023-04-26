<%@ Page Title="" Language="C#" MasterPageFile="~/Views/UserMaster.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Validation_Control.Views.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
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
                     <asp:Label ID="ErrMsg" runat="server" />
                 </div>
                 <div>
                     <asp:Button ID="addBtn" runat="server" Text="Add" class="btn btn-success" OnClick="addBtn_Click" />
                     <asp:Button ID="updateBtn" runat="server" Text="Update" class="btn btn-warning" OnClick="updateBtn_Click" />
                     <asp:Button ID="deleteBtn" runat="server" Text="Delete" class="btn btn-danger" OnClick="deleteBtn_Click" />
                 </div>
             </div>
            <div class="col-md-8">
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
            </div>
        </div>
    </div>
        </ContentTemplate>
    </asp:UpdatePanel>
   
    
</asp:Content>
