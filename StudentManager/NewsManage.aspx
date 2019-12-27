﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="NewsManage.aspx.cs" Inherits="StudentManager.NewsManage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="Home.aspx">首页</a></li>
            <li class="breadcrumb-item active">新闻通知管理</li>
        </ul>
    </div>

    <section class="no-padding-top">
        <div class="container-fluid">
            <div class="row">
                <!-- Inline Form-->
                <div class="col-lg-12">
                    <div class="block">
                        <div class="title"><strong></strong></div>
                        <div class="block-body">
                            <form class="form-horizontal" runat="server">
                                <div class="form-group row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <div class="input-group">
                                                <div class="input-group-prepend">
                                                    <asp:Button ID="btnAdd" runat="server" Text="新增" CssClass="btn btn-primary" OnClick="btnAdd_Click" />
                                                </div>
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                                <div style="width:65%;"></div>
                                                <input id="newsTitle" type="text" class="form-control" placeholder="输入新闻标题查找" runat="server" />
                                                <div class="input-group-append">
                                                    <asp:Button ID="btnSearch" runat="server" CssClass="btn btn-primary" Text="搜索" OnClick="btnSearch_Click" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="table-responsive">
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-hover">
                                        <Columns>
                                            <asp:BoundField DataField="Title" HeaderText="标题" />
                                            <asp:BoundField DataField="Author" HeaderText="发布者" />
                                            <asp:BoundField DataField="ReleaseTime" HeaderText="发布时间" />
                                            <%--<asp:BoundField DataField="Content" HeaderText="内容" />--%>
                                            <asp:BoundField DataField="RelateFile" HeaderText="相关附件" />
                                        </Columns>
                                    </asp:GridView>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
