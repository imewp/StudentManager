<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="EditAdminPwd.aspx.cs" Inherits="StudentManager.EditAdminPwd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="Home.aspx">首页</a></li>
            <li class="breadcrumb-item active">修改密码</li>
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
                                    <label class="col-sm-3 form-control-label">&nbsp;旧&nbsp;密&nbsp;码&nbsp;</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="txtjPwd" runat="server" CssClass="form-control" placeholder="请输入原始密码" TextMode="Password"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="line"></div>
                                <div class="form-group row">
                                    <label class="col-sm-3 form-control-label">&nbsp;新&nbsp;密&nbsp;码&nbsp;</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="txtxPwd" runat="server" placeholder="请输入新密码" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="line"></div>
                                <div class="form-group row">
                                    <label class="col-sm-3 form-control-label">确&nbsp;认&nbsp;密&nbsp;码</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="txtrPwd" runat="server" placeholder="重复输入新密码" CssClass="form-control" TextMode="Password"></asp:TextBox>

                                    </div>
                                </div>
                                <div class="line"></div>
                                <div class="form-group row">
                                    <div class="col-sm-9 ml-auto">
                                        <asp:Button ID="btnSubmit" runat="server" Text=" 提 交 " CssClass="btn btn-primary" OnClick="btnSubmit_Click" />
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
