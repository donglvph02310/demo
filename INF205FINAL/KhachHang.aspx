<%@ Page Title="Khách Hàng" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SanPham.aspx.cs" Inherits="INF205FINAL.SanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1>Khách hàng tiêu biểu<asp:FormView ID="FormView1" runat="server" AllowPaging="True" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="MAKH" DataSourceID="SqlDataSource1" GridLines="Horizontal" Width="566px" HorizontalAlign="Center">
            <EditItemTemplate>
                MAKH:
                <asp:Label ID="MAKHLabel1" runat="server" Text='<%# Eval("MAKH") %>' />
                <br />
                TEN:
                <asp:TextBox ID="TENTextBox" runat="server" Text='<%# Bind("TEN") %>' />
                <br />
                Diachi:
                <asp:TextBox ID="DiachiTextBox" runat="server" Text='<%# Bind("Diachi") %>' />
                <br />
                SDT:
                <asp:TextBox ID="SDTTextBox" runat="server" Text='<%# Bind("SDT") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                MAKH:
                <asp:TextBox ID="MAKHTextBox" runat="server" Text='<%# Bind("MAKH") %>' />
                <br />
                TEN:
                <asp:TextBox ID="TENTextBox" runat="server" Text='<%# Bind("TEN") %>' />
                <br />
                Diachi:
                <asp:TextBox ID="DiachiTextBox" runat="server" Text='<%# Bind("Diachi") %>' />
                <br />
                SDT:
                <asp:TextBox ID="SDTTextBox" runat="server" Text='<%# Bind("SDT") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Mã khách hàng:
                <asp:Label ID="MAKHLabel" runat="server" Text='<%# Eval("MAKH") %>' />
                <br />
                Tên:
                <asp:Label ID="TENLabel" runat="server" Text='<%# Bind("TEN") %>' />
                <br />
                Địa chỉ:
                <asp:Label ID="DiachiLabel" runat="server" Text='<%# Bind("Diachi") %>' />
                <br />
                SĐT:
                <asp:Label ID="SDTLabel" runat="server" Text='<%# Bind("SDT") %>' />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [Khachhang]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Khachhang] WHERE [MAKH] = @original_MAKH AND [TEN] = @original_TEN AND [Diachi] = @original_Diachi AND [SDT] = @original_SDT" InsertCommand="INSERT INTO [Khachhang] ([MAKH], [TEN], [Diachi], [SDT]) VALUES (@MAKH, @TEN, @Diachi, @SDT)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Khachhang] SET [TEN] = @TEN, [Diachi] = @Diachi, [SDT] = @SDT WHERE [MAKH] = @original_MAKH AND [TEN] = @original_TEN AND [Diachi] = @original_Diachi AND [SDT] = @original_SDT">
        <DeleteParameters>
            <asp:Parameter Name="original_MAKH" Type="String" />
            <asp:Parameter Name="original_TEN" Type="String" />
            <asp:Parameter Name="original_Diachi" Type="String" />
            <asp:Parameter Name="original_SDT" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MAKH" Type="String" />
            <asp:Parameter Name="TEN" Type="String" />
            <asp:Parameter Name="Diachi" Type="String" />
            <asp:Parameter Name="SDT" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TEN" Type="String" />
            <asp:Parameter Name="Diachi" Type="String" />
            <asp:Parameter Name="SDT" Type="String" />
            <asp:Parameter Name="original_MAKH" Type="String" />
            <asp:Parameter Name="original_TEN" Type="String" />
            <asp:Parameter Name="original_Diachi" Type="String" />
            <asp:Parameter Name="original_SDT" Type="String" />
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
