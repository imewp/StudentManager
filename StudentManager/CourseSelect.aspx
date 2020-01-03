<%@ Page Title="" Language="C#" MasterPageFile="~/StudentTemplate.Master" AutoEventWireup="true" CodeBehind="CourseSelect.aspx.cs" Inherits="StudentManager.CourseSelect" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="NewsList.aspx">首页</a></li>
            <li class="breadcrumb-item active">选择课程</li>
        </ul>
    </div>

    <section class="no-padding-top">
        <div class="container-fluid">
            <div class="row">
                <!-- Inline Form-->
                <div class="col-lg-12">
                    <form class="form-horizontal" runat="server">
                        <div class="block">
                            <div class="title"><strong></strong></div>
                            <div class="block-body">
                                <div class="form-group row">
                                    <table class="am-u-sm-12">
                                        <tr style="text-align: center;">
                                            <td>未选课程</td>
                                            <td>操作</td>
                                            <td>已选课程</td>
                                        </tr>
                                        <tr style="text-align: center;">
                                            <td>
                                                <asp:ListBox ID="lb1" runat="server" Height="400px" Width="200px" OnSelectedIndexChanged="lb1_SelectedIndexChanged" AutoPostBack="True"></asp:ListBox>
                                            </td>
                                            <td style="padding: 20px;">
                                                <asp:Button ID="Button1" runat="server" Text="选定>>" OnClick="Button1_Click" /><br />
                                                <br />
                                                <asp:Button ID="Button2" runat="server" Text="退选<<" OnClick="Button2_Click" /><br />
                                                <br />
                                                <asp:Button ID="Button3" runat="server" Text="确认提交" OnClick="Button3_Click" /><br />
                                            </td>
                                            <td>
                                                <asp:ListBox ID="lb2" runat="server" Height="400px" Width="200px"></asp:ListBox>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>

                        </div>
                        <div class="block">
                            <div class="title"><strong>课程详细信息</strong></div>
                            <div class="block-body">
                                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
