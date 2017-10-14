<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="INF205FINAL.About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>Phần mềm quản lý bán hàng</h1>
    </hgroup>

    <article>
        <p>        
            Cloud Computing
        </p>

        <p>        
            ASP.NET
        </p>

        <p>        
            GITHUB
        </p>
    </article>

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