<%@ Page Title="Sản Phẩm" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SanPham.aspx.cs" Inherits="INF205FINAL.SanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1>Các loại sản phẩm.</h1>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
    </hgroup>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MaSP" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="MaSP" HeaderText="MaSP" ReadOnly="True" SortExpression="MaSP" />
            <asp:BoundField DataField="TenSP" HeaderText="TenSP" SortExpression="TenSP" />
            <asp:BoundField DataField="Soluong" HeaderText="Soluong" SortExpression="Soluong" />
            <asp:BoundField DataField="Mota" HeaderText="Mota" SortExpression="Mota" />
            <asp:BoundField DataField="MaLSP" HeaderText="MaLSP" SortExpression="MaLSP" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\INF205_ass.mdf;Integrated Security=True;Connect Timeout=30" SelectCommand="SELECT * FROM [SANPHAM]"></asp:SqlDataSource>
</asp:Content>
