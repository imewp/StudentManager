<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="AdminAdd.aspx.cs" Inherits="StudentManager.AdminAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="Home.aspx">首页</a></li>
            <li class="breadcrumb-item active">添加管理员</li>
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
                                <div class="form-group row">
                                    <label class="col-sm-3 form-control-label">管理员账号</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="txtUserName" runat="server" placeholder="账号不得长于20个字符" CssClass="form-control"></asp:TextBox>
                                        
                                    </div>
                                </div>
                                <div class="line"></div>
                                <div class="form-group row">
                                    <label class="col-sm-3 form-control-label">管理员密码</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="txtPwd" runat="server" placeholder="请输入8-16位的密码" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                        
                                    </div>
                                </div>
                                <div class="line"></div>
                                <div class="form-group row">
                                    <label class="col-sm-3 form-control-label">确&nbsp;认&nbsp;密&nbsp;码</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="txtPwd_two" runat="server" placeholder="请输入8-16位的密码" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                       
                                    </div>
                                </div>
                                <div class="line"></div>
                                <div class="form-group row">
                                    <label class="col-sm-3 form-control-label">真&nbsp;实&nbsp;姓&nbsp;名</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="txtTrueName" runat="server" placeholder="姓名不得长于10个字" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                        
                                    </div>
                                </div>
                                <div class="line"></div>
                                <div class="form-group row">
                                    <label class="col-sm-3 form-control-label">联&nbsp;系&nbsp;电&nbsp;话</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="txtLinkTelephone" runat="server" placeholder="请输入联系电话" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="line"></div>
                                <div class="form-group row">
                                    <div class="col-sm-9 ml-auto">
                                        <button type="submit" class="btn btn-primary">Save changes</button>
                                        <button type="submit" class="btn btn-secondary" >Cancel</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
