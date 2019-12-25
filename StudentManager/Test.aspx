<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="StudentManager.Test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/amazeui.min.css" rel="stylesheet" />
    <link href="css/app.css" rel="stylesheet" />
    <script src="js/jquery.min.js"></script>
    <script src="js/theme.js"></script>

    <%--<div class="page-header no-margin-bottom">
        <div class="container-fluid">
            <h2 class="h5 no-margin-bottom">首页</h2>
        </div>
    </div>
    <!-- Breadcrumb-->
    <div class="container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="index.html">首页</a></li>
        </ul>
    </div>--%>
    <%--<asp:DataList ID="dlstNews" runat="server" DataKeyField="newsID" DataSourceID="SqlDataSource1" OnItemCommand="dlstNews_ItemCommand">
        <ItemTemplate>

        </ItemTemplate>
    </asp:DataList>--%>

    <section class="no-padding-top">
        <div class="am-g tpl-g">
            <!-- 内容区域 -->
            <div class="row-content am-cf">
                <div class="row">
                    <div class="am-u-sm-12 am-u-md-12 am-u-lg-6" style="width: 950px;">
                        <div class="widget am-cf">
                            <div class="widget-body  widget-body-lg am-fr">
                                <table style="width: 900px;" class="am-table am-table-compact am-table-bordered am-table-radius am-table-striped tpl-table-black " id="example-r">
                                    <thead>
                                        <tr>
                                            <th>文章标题</th>
                                            <th>作者</th>
                                            <th>时间</th>
                                            <th>操作</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="gradeX">
                                            <td>Amaze UI 模式窗口</td>
                                            <td>张鹏飞</td>
                                            <td>2016-09-26</td>
                                            <td>
                                                <div class="tpl-table-black-operation">
                                                    <a href="javascript:;">
                                                        <i class="am-icon-pencil"></i>编辑
                                                    </a>
                                                    <a href="javascript:;" class="tpl-table-black-operation-del">
                                                        <i class="am-icon-trash"></i>删除
                                                    </a>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr class="even gradeC">
                                            <td>有适配微信小程序的计划吗</td>
                                            <td>天纵之人</td>
                                            <td>2016-09-26</td>
                                            <td>
                                                <div class="tpl-table-black-operation">
                                                    <a href="javascript:;">
                                                        <i class="am-icon-pencil"></i>编辑
                                                    </a>
                                                    <a href="javascript:;" class="tpl-table-black-operation-del">
                                                        <i class="am-icon-trash"></i>删除
                                                    </a>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr class="gradeX">
                                            <td>请问有没有amazeui 分享插件</td>
                                            <td>王宽师</td>
                                            <td>2016-09-26</td>
                                            <td>
                                                <div class="tpl-table-black-operation">
                                                    <a href="javascript:;">
                                                        <i class="am-icon-pencil"></i>编辑
                                                    </a>
                                                    <a href="javascript:;" class="tpl-table-black-operation-del">
                                                        <i class="am-icon-trash"></i>删除
                                                    </a>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr class="even gradeC">
                                            <td>关于input输入框的问题</td>
                                            <td>着迷</td>
                                            <td>2016-09-26</td>
                                            <td>
                                                <div class="tpl-table-black-operation">
                                                    <a href="javascript:;">
                                                        <i class="am-icon-pencil"></i>编辑
                                                    </a>
                                                    <a href="javascript:;" class="tpl-table-black-operation-del">
                                                        <i class="am-icon-trash"></i>删除
                                                    </a>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr class="even gradeC">
                                            <td>有没有发现官网上的下载包不好用</td>
                                            <td>醉里挑灯看键</td>
                                            <td>2016-09-26</td>
                                            <td>
                                                <div class="tpl-table-black-operation">
                                                    <a href="javascript:;">
                                                        <i class="am-icon-pencil"></i>编辑
                                                    </a>
                                                    <a href="javascript:;" class="tpl-table-black-operation-del">
                                                        <i class="am-icon-trash"></i>删除
                                                    </a>
                                                </div>
                                            </td>
                                        </tr>

                                        <tr class="even gradeC">
                                            <td>我建议WEB版本文件引入问题</td>
                                            <td>罢了</td>
                                            <td>2016-09-26</td>
                                            <td>
                                                <div class="tpl-table-black-operation">
                                                    <a href="javascript:;">
                                                        <i class="am-icon-pencil"></i>编辑
                                                    </a>
                                                    <a href="javascript:;" class="tpl-table-black-operation-del">
                                                        <i class="am-icon-trash"></i>删除
                                                    </a>
                                                </div>
                                            </td>
                                        </tr>
                                        <!-- more data -->
                                    </tbody>
                                </table>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
