<%@ Page Title="Khách Hàng" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SanPham.aspx.cs" Inherits="INF205FINAL.SanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1>Khách hàng tiêu biểu</h1>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
    </hgroup>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="MAKH">
        <Columns>
            <asp:BoundField DataField="MAKH" HeaderText="MAKH" ReadOnly="True" SortExpression="MAKH" />
            <asp:BoundField DataField="TEN" HeaderText="TEN" SortExpression="TEN" />
            <asp:BoundField DataField="Diachi" HeaderText="Diachi" SortExpression="Diachi" />
            <asp:BoundField DataField="SDT" HeaderText="SDT" SortExpression="SDT" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\INF205_ass.mdf;Integrated Security=True;Connect Timeout=30" SelectCommand="SELECT * FROM [Khachhang]"></asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
    <br />
    <aside>
        <h3>Xem thêm</h3>
        <p>        
            Nhấp 1 trang để xem thêm về chúng tôi
        </p>
        <ul>
            <li><a id="A1" runat="server" href="~/">Trang chủ</a></li>
            <li><a id="A2" runat="server" href="~/About.aspx">Thông tin</a></li>
            <li><a id="A3" runat="server" href="~/Contact.aspx">Liên hệ</a></li>
        </ul>
    </aside>
</asp:Content>
