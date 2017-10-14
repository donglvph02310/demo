<%@ Page Title="Loại Sản Phẩm" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SanPham.aspx.cs" Inherits="INF205FINAL.SanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1>Các loại sản phẩm</h1>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
    </hgroup>
    <br />
   <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="MaLSP">
        <Columns>
            <asp:BoundField DataField="MaLSP" HeaderText="MaLSP" ReadOnly="True" SortExpression="MaLSP" />
            <asp:BoundField DataField="TenLSP" HeaderText="TenLSP" SortExpression="TenLSP" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\INF205_ass.mdf;Integrated Security=True;Connect Timeout=30" SelectCommand="SELECT [MaLSP], [TenLSP] FROM [LOAISANPHAM]"></asp:SqlDataSource>
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
        <p>
            &nbsp;</p>
    </aside>
</asp:Content>
