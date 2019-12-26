<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="StudentInfo.aspx.cs" Inherits="StudentManager.StudentInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="Home.aspx">首页</a></li>
            <li class="breadcrumb-item active">学生信息查看</li>
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
                                                    <asp:Button ID="btnAdd" runat="server" Text="新增"  CssClass="btn btn-primary" OnClick="btnAdd_Click"/>
                                                </div>
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                                <input id="studentId" type="text" class="form-control" placeholder="输入学号查找" runat="server" />
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
                                            <asp:BoundField DataField="StudentId" HeaderText="学号" />
                                            <asp:BoundField DataField="StudentName" HeaderText="姓名" />
<asp:BoundField DataField="StudentSex" HeaderText="性别"></asp:BoundField>
                                            <asp:BoundField DataField="StudentNation" HeaderText="民族" />
                                            <asp:BoundField DataField="StudentTelehpone" HeaderText="联系电话" />
                                            <asp:BoundField DataField="StudentClass" HeaderText="所在班级" />
                                            <asp:BoundField DataField="StudentDormitory" HeaderText="宿舍" />
                                            <asp:BoundField DataField="StudentAddress" HeaderText="家庭住址" />
                                        </Columns>
                                    </asp:GridView>
                                </div>
                            </form>
                        </div>
                    </div>


                </div>
            </div>
        </div>
        </div>
    </section>
</asp:Content>
