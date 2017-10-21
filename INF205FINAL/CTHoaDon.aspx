<%@ Page Title="Chi Tiết Hóa Đơn" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SanPham.aspx.cs" Inherits="INF205FINAL.SanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1>Chi tiết các hóa đơn.</h1>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
    </hgroup>
    <br />
    <br />
    <br />
    <br />
    <hgroup class="title">
        <h1><asp:FormView ID="FormView1" runat="server" AllowPaging="True" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataSourceID="SqlDataSource1" GridLines="Horizontal" Width="566px" HorizontalAlign="Center">
            <EditItemTemplate>
                MaSp:
                <asp:TextBox ID="MaSpTextBox" runat="server" Text='<%# Bind("MaSp") %>' />
                <br />
                MaHD:
                <asp:TextBox ID="MaHDTextBox" runat="server" Text='<%# Bind("MaHD") %>' />
                <br />
                Soluong:
                <asp:TextBox ID="SoluongTextBox" runat="server" Text='<%# Bind("Soluong") %>' />
                <br />
                DonGiaBan:
                <asp:TextBox ID="DonGiaBanTextBox" runat="server" Text='<%# Bind("DonGiaBan") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                MaSp:
                <asp:TextBox ID="MaSpTextBox" runat="server" Text='<%# Bind("MaSp") %>' />
                <br />
                MaHD:
                <asp:TextBox ID="MaHDTextBox" runat="server" Text='<%# Bind("MaHD") %>' />
                <br />
                Soluong:
                <asp:TextBox ID="SoluongTextBox" runat="server" Text='<%# Bind("Soluong") %>' />
                <br />
                DonGiaBan:
                <asp:TextBox ID="DonGiaBanTextBox" runat="server" Text='<%# Bind("DonGiaBan") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Mã SP:
                <asp:Label ID="MaSpLabel" runat="server" Text='<%# Bind("MaSp") %>' />
                <br />
                Mã hóa đơn:
                <asp:Label ID="MaHDLabel" runat="server" Text='<%# Bind("MaHD") %>' />
                <br />
                Số Lượng:
                <asp:Label ID="SoluongLabel" runat="server" Text='<%# Bind("Soluong") %>' />
                <br />
                Đơn giá:
                <asp:Label ID="DonGiaBanLabel" runat="server" Text='<%# Bind("DonGiaBan") %>' />
                <br />
            </ItemTemplate>
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            </asp:FormView>
        </h1>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
    </hgroup>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [CTHOADON]" OldValuesParameterFormatString="original_{0}">
</asp:SqlDataSource>
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
