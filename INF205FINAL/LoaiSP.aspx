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
    <hgroup class="title">
        <h1><asp:FormView ID="FormView1" runat="server" AllowPaging="True" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="MaLSP" DataSourceID="SqlDataSource1" GridLines="Horizontal" Width="566px" HorizontalAlign="Center">
            <EditItemTemplate>
                MaLSP:
                <asp:Label ID="MaLSPLabel1" runat="server" Text='<%# Eval("MaLSP") %>' />
                <br />
                TenLSP:
                <asp:TextBox ID="TenLSPTextBox" runat="server" Text='<%# Bind("TenLSP") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                MaLSP:
                <asp:TextBox ID="MaLSPTextBox" runat="server" Text='<%# Bind("MaLSP") %>' />
                <br />
                TenLSP:
                <asp:TextBox ID="TenLSPTextBox" runat="server" Text='<%# Bind("TenLSP") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Mã Loại SP:
                <asp:Label ID="MaLSPLabel" runat="server" Text='<%# Eval("MaLSP") %>' />
                <br />
                Tên loại SP:
                <asp:Label ID="TenLSPLabel" runat="server" Text='<%# Bind("TenLSP") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Sửa" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Xóa" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Thêm" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [LOAISANPHAM]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [LOAISANPHAM] WHERE [MaLSP] = @original_MaLSP AND [TenLSP] = @original_TenLSP" InsertCommand="INSERT INTO [LOAISANPHAM] ([MaLSP], [TenLSP]) VALUES (@MaLSP, @TenLSP)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [LOAISANPHAM] SET [TenLSP] = @TenLSP WHERE [MaLSP] = @original_MaLSP AND [TenLSP] = @original_TenLSP">
        <DeleteParameters>
            <asp:Parameter Name="original_MaLSP" Type="String" />
            <asp:Parameter Name="original_TenLSP" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaLSP" Type="String" />
            <asp:Parameter Name="TenLSP" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenLSP" Type="String" />
            <asp:Parameter Name="original_MaLSP" Type="String" />
            <asp:Parameter Name="original_TenLSP" Type="String" />
        </UpdateParameters>
</asp:SqlDataSource>
   
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
