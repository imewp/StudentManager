<%@ Page Title="" Language="C#" MasterPageFile="~/StudentTemplate.Master" AutoEventWireup="true" CodeBehind="NewsShowStu.aspx.cs" Inherits="StudentManager.NewsShow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="Home.aspx">首页</a></li>
            <li class="breadcrumb-item"><a href="NewsList.aspx">新闻通知列表</a></li>
            <li class="breadcrumb-item active">新闻详细信息</li>
        </ul>
    </div>

    <section class="no-padding-top">
        <div class="container-fluid">
            <div class="row">
                <!-- Form Elements -->
                <div class="col-lg-12">
                    <div class="block">
                        <div class="title"><strong></strong></div>
                        <div class="block-body">
                            <form class="form-horizontal" runat="server">
                                <div id="ntitle" style="text-align: center; border-bottom: 1px dotted;">
                                    <div style="font-size: 1.5em; font-weight: bold;">
                                        <asp:Literal ID="lt1" runat="server"></asp:Literal>
                                    </div>
                                    <div style="font-size: 12pt;">
                                        <asp:Label ID="lb1" runat="server" Text="Label"></asp:Label>
                                    </div>
                                </div>
                                <div id="ncontent">
                                    <asp:Literal ID="lt2" runat="server"></asp:Literal>
                                </div>
                                <div>
                                    <asp:Literal ID="lt3" runat="server"></asp:Literal>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
