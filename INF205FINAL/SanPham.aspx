<%@ Page Title="Sản Phẩm" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SanPham.aspx.cs" Inherits="INF205FINAL.SanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1>Các sản phẩm.</h1>
    </hgroup>
    <hgroup class="title">
        <h1><asp:FormView ID="FormView1" runat="server" AllowPaging="True" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="MaSP" DataSourceID="SqlDataSource1" GridLines="Horizontal" Width="566px" HorizontalAlign="Center">
            <EditItemTemplate>
                MaSP:
                <asp:Label ID="MaSPLabel1" runat="server" Text='<%# Eval("MaSP") %>' />
                <br />
                TenSP:
                <asp:TextBox ID="TenSPTextBox" runat="server" Text='<%# Bind("TenSP") %>' />
                <br />
                Soluong:
                <asp:TextBox ID="SoluongTextBox" runat="server" Text='<%# Bind("Soluong") %>' />
                <br />
                Mota:
                <asp:TextBox ID="MotaTextBox" runat="server" Text='<%# Bind("Mota") %>' />
                <br />
                MaLSP:
                <asp:TextBox ID="MaLSPTextBox" runat="server" Text='<%# Bind("MaLSP") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                MaSP:
                <asp:TextBox ID="MaSPTextBox" runat="server" Text='<%# Bind("MaSP") %>' />
                <br />
                TenSP:
                <asp:TextBox ID="TenSPTextBox" runat="server" Text='<%# Bind("TenSP") %>' />
                <br />
                Soluong:
                <asp:TextBox ID="SoluongTextBox" runat="server" Text='<%# Bind("Soluong") %>' />
                <br />
                Mota:
                <asp:TextBox ID="MotaTextBox" runat="server" Text='<%# Bind("Mota") %>' />
                <br />
                MaLSP:
                <asp:TextBox ID="MaLSPTextBox" runat="server" Text='<%# Bind("MaLSP") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Mã sản phẩm:
                <asp:Label ID="MaSPLabel" runat="server" Text='<%# Eval("MaSP") %>' />
                <br />
                Tên sản phẩm:
                <asp:Label ID="TenSPLabel" runat="server" Text='<%# Bind("TenSP") %>' />
                <br />
                Số Lượng:
                <asp:Label ID="SoluongLabel" runat="server" Text='<%# Bind("Soluong") %>' />
                <br />
                Mô tả:
                <asp:Label ID="MotaLabel" runat="server" Text='<%# Bind("Mota") %>' />
                <br />
                Mã Loại SP:
                <asp:Label ID="MaLSPLabel" runat="server" Text='<%# Bind("MaLSP") %>' />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [SANPHAM]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [SANPHAM] WHERE [MaSP] = @original_MaSP AND [TenSP] = @original_TenSP AND [Soluong] = @original_Soluong AND [Mota] = @original_Mota AND [MaLSP] = @original_MaLSP" InsertCommand="INSERT INTO [SANPHAM] ([MaSP], [TenSP], [Soluong], [Mota], [MaLSP]) VALUES (@MaSP, @TenSP, @Soluong, @Mota, @MaLSP)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [SANPHAM] SET [TenSP] = @TenSP, [Soluong] = @Soluong, [Mota] = @Mota, [MaLSP] = @MaLSP WHERE [MaSP] = @original_MaSP AND [TenSP] = @original_TenSP AND [Soluong] = @original_Soluong AND [Mota] = @original_Mota AND [MaLSP] = @original_MaLSP">
        <DeleteParameters>
            <asp:Parameter Name="original_MaSP" Type="String" />
            <asp:Parameter Name="original_TenSP" Type="String" />
            <asp:Parameter Name="original_Soluong" Type="String" />
            <asp:Parameter Name="original_Mota" Type="String" />
            <asp:Parameter Name="original_MaLSP" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaSP" Type="String" />
            <asp:Parameter Name="TenSP" Type="String" />
            <asp:Parameter Name="Soluong" Type="String" />
            <asp:Parameter Name="Mota" Type="String" />
            <asp:Parameter Name="MaLSP" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenSP" Type="String" />
            <asp:Parameter Name="Soluong" Type="String" />
            <asp:Parameter Name="Mota" Type="String" />
            <asp:Parameter Name="MaLSP" Type="String" />
            <asp:Parameter Name="original_MaSP" Type="String" />
            <asp:Parameter Name="original_TenSP" Type="String" />
            <asp:Parameter Name="original_Soluong" Type="String" />
            <asp:Parameter Name="original_Mota" Type="String" />
            <asp:Parameter Name="original_MaLSP" Type="String" />
        </UpdateParameters>
</asp:SqlDataSource>
    <br />
    <hgroup class="title">
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
    </hgroup>
    </asp:Content>
