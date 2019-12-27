﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="NewsAdd.aspx.cs" Inherits="StudentManager.NewsAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="Home.aspx">首页</a></li>
            <li class="breadcrumb-item active">新闻通知添加</li>
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
                                    <label class="col-sm-3 form-control-label">新闻标题</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="txtTitle" runat="server" placeholder="标题不得长于100个字符" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="line"></div>
                                <div class="form-group row">
                                    <label class="col-sm-3 form-control-label">作者/发布者</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="txtAuthor" runat="server" placeholder="姓名不得长于10个字" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="line"></div>
                                <div class="form-group row">
                                    <label class="col-sm-3 form-control-label">发布时间</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="txtReleaseTime" runat="server" placeholder="例：2012-" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="line"></div>
                                <div class="form-group row">
                                    <label class="col-sm-3 form-control-label">性别</label>
                                    <div class="col-sm-9">
                                        <input id="rdlSexMale" runat="server" type="radio" value="男" name="a" class="radio-template" />
                                        <label for="rdlSexMale" style="margin-right: 50px;">男</label>
                                        <input id="rdlSexFemale" runat="server" type="radio" checked="" value="女" name="a" class="radio-template" />
                                        <label for="rdlSexFemale">女</label>
                                    </div>
                                </div>
                                <div class="line"></div>
                                <div class="form-group row">
                                    <label class="col-sm-3 form-control-label">联系电话</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="txtStuTelehpone" runat="server" placeholder="例：12345679810" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="line"></div>
                                <div class="form-group row">
                                    <label class="col-sm-3 form-control-label">QQ号码</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="txtStuQQ" runat="server" placeholder="例：12345679810" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="line"></div>
                                <div class="form-group row">
                                    <label class="col-sm-3 form-control-label">所在班级</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="txtStuClass" runat="server" placeholder="例：XXX专业XXXX级XX班" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="line"></div>
                                <div class="form-group row">
                                    <label class="col-sm-3 form-control-label">宿舍</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="txtStuDormitory" runat="server" placeholder="例：XX号楼XX层XXX" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="line"></div>
                                <div class="form-group row">
                                    <label class="col-sm-3 form-control-label">家庭住址</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="txtStuAddress" runat="server" placeholder="例：XX省XX市(XX县)XX区XXXX街道XXX单元XXX号" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="line"></div>
                                <div class="form-group row" style="margin-right: 50px; height: 500px;">
                                    <label class="col-sm-3 form-control-label"></label>
                                    <div class="col-sm-9" style="float: right;">
                                        <asp:Image ID="Image1" runat="server" Width="100" Height="150" />
                                        <asp:FileUpload ID="fulStuPhoto" runat="server" />
                                    </div>
                                </div>

                                <div class="line"></div>
                                <div class="form-group row">
                                    <div class="col-sm-9 ml-auto">
                                        <%--<asp:Button ID="btnAdd" CssClass="btn btn-primary" runat="server" Text="Save changes" OnClick="btnAdd_Click" />
                                        <asp:Button ID="btnCancel" CssClass="btn btn-secondary" runat="server" Text="Cancel" OnClick="btnCancel_Click" />--%>
                                        <button type="submit" class="btn btn-primary">Save changes</button>
                                        <button type="submit" class="btn btn-secondary">Cancel</button>
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
