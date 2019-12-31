<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" ValidateRequest="false" CodeBehind="NewsAdd.aspx.cs" Inherits="StudentManager.NewsAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript" charset="utf-8" src="ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="ueditor/ueditor.all.js"></script>
    <link rel="stylesheet" type="text/css" href="ueditor/themes/default/ueditor.css" />

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
                                <%--<div class="line"></div>
                                <div class="form-group row">
                                    <label class="col-sm-3 form-control-label">发布者</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="txtAuthor" runat="server" placeholder="姓名不得长于10个字" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>--%>
                                <div class="line"></div>
                                <div class="form-group row">
                                    <label class="col-sm-3 form-control-label">发布时间</label>
                                    <div class="col-sm-9">

                                        <asp:TextBox ID="txtReleaseTime" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="line"></div>
                                <div class="form-group row">
                                    <label class="col-sm-3 form-control-label">发布内容</label>
                                    <div class="col-sm-9">
                                        <asp:HiddenField ID="content" runat="server" />
                                        <div id="txteditor" style="height: 500px;"></div>
                                        <script type="text/javascript">
                                            var temp = document.getElementById("<%=content.ClientID %>").value;
                                            var ue = new baidu.editor.ui.Editor();
                                            
                                            ue.render("txteditor");   //这里填写要改变为编辑器的控件id 
                                            ue.ready(function () {
                                                ue.setContent(temp);
                                            })
                                        </script>
                                        <script type="text/javascript">
                                            function getContent() {
                                                var temp = UE.getEditor('txteditor').getContent();
                                                //alert(temp); 
                                                document.getElementById("<%=content.ClientID %>").value = temp;
                                            }
                                        </script>
                                    </div>
                                </div>
                                <div class="line"></div>
                                <div class="form-group row">
                                    <label class="col-sm-3 form-control-label">附件</label>
                                    <div class="col-sm-9">
                                        <asp:FileUpload ID="FileUpload1" runat="server" />
                                    </div>
                                </div>
                                <div class="line"></div>
                                <div class="form-group row">
                                    <div class="col-sm-9 ml-auto">
                                        <asp:Button ID="btnAdd" CssClass="btn btn-primary" runat="server" Text="Save" OnClientClick="getContent()" OnClick="btnAdd_Click" />
                                        <asp:Button ID="btnCancel" CssClass="btn btn-secondary" runat="server" Text="Cancel" OnClick="btnCancel_Click" />
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
