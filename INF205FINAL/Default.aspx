<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="INF205FINAL._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1>TRANG CHỦ.</h1>
            </hgroup>
            <p>
                TRANG WEB SỬ DỤNG MÃ NGUỒN ASP.NET <a href="http://asp.net" title="ASP.NET Website">http://asp.net</a>..
            </p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>WEBSITE ĐƯỢC XÂY DỰNG CÓ SỬ DỤNG</h3>
    <ol class="round">
        <li class="one">
            <h5>MÃ NGUỒN ASP.NET XÂY DỰNG BẰNG VISUAL STUDIO 2012&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h5>
        </li>
&nbsp;<li class="two">
            <h5>SỬ DỤNG DỮ LIỆU TỪ SQL SEVER</h5>
        </li>
        <li class="three">
            <h5>ĐƯỢC SAO LƯU TRÊN HỆ THỐNG CLOUD GITHUB</h5>
        </li>
    </ol>
</asp:Content>
