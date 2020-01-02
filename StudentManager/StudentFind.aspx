<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="StudentFind.aspx.cs" Inherits="StudentManager.StudentFind" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="NewsManage.aspx">首页</a></li>
            <li class="breadcrumb-item active">学生信息列表</li>
        </ul>
    </div>


    <section class="no-padding-top">
        <div class="container-fluid">
            <div class="row">
                <!-- All Form-->
                <div class="col-lg-12">
                    <form class="form-horizontal" runat="server">
                        <div class="block">
                            <div class="title"><strong></strong></div>
                            <div class="block-body">
                                <div class="form-group row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <div class="input-group">
                                                <div class="input-group-prepend">
                                                    <asp:Button ID="btnAdd" runat="server" Text="新增" CssClass="btn btn-primary" OnClick="btnAdd_Click" />
                                                </div>
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                                <div style="width: 55%;"></div>
                                                <div class="input-group-prepend">
                                                    <asp:Button ID="bsearch" runat="server" Text="查询方式" data-toggle="dropdown" class="btn btn-outline-secondary dropdown-toggle" />
                                                    <div class="dropdown-menu">
                                                        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="dropdown-item" OnClick="LinkButton1_Click" Font-Size="Medium">学号</asp:LinkButton>
                                                        <asp:LinkButton ID="LinkButton2" runat="server" CssClass="dropdown-item" OnClick="LinkButton2_Click" Font-Size="Medium">姓名</asp:LinkButton>
                                                        <div class="dropdown-divider"></div>
                                                        <a href="#" class="dropdown-item">查询方式</a>
                                                    </div>
                                                </div>
                                                <input id="student" type="text" class="form-control" placeholder="输入学号/姓名进行查找" runat="server" />
                                                <div class="input-group-append">
                                                    <asp:Button ID="btnSearch" runat="server" CssClass="btn btn-primary" Text="搜索" OnClick="btnSearch_Click" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="line"></div>
                                <div class="form-group row">
                                    <div class="table-responsive">
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                                            CssClass="table table-striped table-hover"
                                            OnRowCommand="GridView1_RowCommand" OnRowCreated="GridView1_RowCreated" DataKeyNames="Id" AllowPaging="True" AllowSorting="True" OnPageIndexChanging="GridView1_PageIndexChanging">
                                            <Columns>
                                                <asp:BoundField DataField="StudentId" HeaderText="学号" />
                                                <asp:BoundField DataField="StudentName" HeaderText="姓名" />
                                                <asp:BoundField DataField="StudentSex" HeaderText="性别" />
                                                <asp:BoundField DataField="StudentNation" HeaderText="民族" />
                                                <asp:BoundField DataField="StudentTelehpone" HeaderText="联系电话" />
                                                <asp:BoundField DataField="StudentClass" HeaderText="所在班级" />
                                                <asp:TemplateField HeaderText="操作">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="lb1" CommandName="edit" runat="server" ToolTip="修改当前学生的信息">编辑</asp:LinkButton>||
                                                        <asp:LinkButton ID="lb2" CommandName="del" runat="server" ToolTip="删除当前学生" OnClientClick="javascript:return confirm('确定删除吗?');">删除</asp:LinkButton>||
                                                        <asp:LinkButton ID="lb3" CommandName="reset" runat="server" ToolTip="重置当前学生的密码">重置</asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="block">
                            <div class="title"><strong>批量导入学生信息</strong></div>
                            <div class="block-body">
                                <div class="form-group">
                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                    <asp:Button ID="btnImport" runat="server" CssClass="btn btn-primary" Text="导入" OnClick="btnImport_Click" />
                                </div>
                            </div>
                        </div>
                        <div class="block">
                            <div class="title"><strong>批量导出学生信息</strong></div>
                            <div class="block-body">
                                <div class="form-group">
                                    <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" Text="导出" OnClick="btnExport_Click" />
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
