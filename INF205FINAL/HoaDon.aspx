<%@ Page Title="Hóa Đơn" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SanPham.aspx.cs" Inherits="INF205FINAL.SanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1>Các hóa đơn</h1>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
    </hgroup>
    <hgroup class="title">
        <h1><asp:FormView ID="FormView1" runat="server" AllowPaging="True" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="MaHD" DataSourceID="SqlDataSource1" GridLines="Horizontal" Width="566px" HorizontalAlign="Center">
            <EditItemTemplate>
                MaHD:
                <asp:Label ID="MaHDLabel1" runat="server" Text='<%# Eval("MaHD") %>' />
                <br />
                Ngaylap:
                <asp:TextBox ID="NgaylapTextBox" runat="server" Text='<%# Bind("Ngaylap") %>' />
                <br />
                MAKH:
                <asp:TextBox ID="MAKHTextBox" runat="server" Text='<%# Bind("MAKH") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                MaHD:
                <asp:TextBox ID="MaHDTextBox" runat="server" Text='<%# Bind("MaHD") %>' />
                <br />
                Ngaylap:
                <asp:TextBox ID="NgaylapTextBox" runat="server" Text='<%# Bind("Ngaylap") %>' />
                <br />
                MAKH:
                <asp:TextBox ID="MAKHTextBox" runat="server" Text='<%# Bind("MAKH") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Mã Hóa Đơn:
                <asp:Label ID="MaHDLabel" runat="server" Text='<%# Eval("MaHD") %>' />
                <br />
                Ngày Lập:
                <asp:Label ID="NgaylapLabel" runat="server" Text='<%# Bind("Ngaylap") %>' />
                <br />
                Mã khách hàng:
                <asp:Label ID="MAKHLabel" runat="server" Text='<%# Bind("MAKH") %>' />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [HoaDon]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [HoaDon] WHERE [MaHD] = @original_MaHD AND (([Ngaylap] = @original_Ngaylap) OR ([Ngaylap] IS NULL AND @original_Ngaylap IS NULL)) AND (([MAKH] = @original_MAKH) OR ([MAKH] IS NULL AND @original_MAKH IS NULL))" InsertCommand="INSERT INTO [HoaDon] ([MaHD], [Ngaylap], [MAKH]) VALUES (@MaHD, @Ngaylap, @MAKH)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [HoaDon] SET [Ngaylap] = @Ngaylap, [MAKH] = @MAKH WHERE [MaHD] = @original_MaHD AND (([Ngaylap] = @original_Ngaylap) OR ([Ngaylap] IS NULL AND @original_Ngaylap IS NULL)) AND (([MAKH] = @original_MAKH) OR ([MAKH] IS NULL AND @original_MAKH IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_MaHD" Type="String" />
            <asp:Parameter Name="original_Ngaylap" Type="DateTime" />
            <asp:Parameter Name="original_MAKH" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaHD" Type="String" />
            <asp:Parameter Name="Ngaylap" Type="DateTime" />
            <asp:Parameter Name="MAKH" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Ngaylap" Type="DateTime" />
            <asp:Parameter Name="MAKH" Type="String" />
            <asp:Parameter Name="original_MaHD" Type="String" />
            <asp:Parameter Name="original_Ngaylap" Type="DateTime" />
            <asp:Parameter Name="original_MAKH" Type="String" />
        </UpdateParameters>
</asp:SqlDataSource>
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
