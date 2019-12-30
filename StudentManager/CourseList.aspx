<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="CourseList.aspx.cs" Inherits="StudentManager.CourseList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="Home.aspx">首页</a></li>
            <li class="breadcrumb-item active">课程列表</li>
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
                                                <div style="width:65%;"></div>
                                                <input id="course_id" type="text" class="form-control" placeholder="输入课程编号查找" runat="server" />
                                                <div class="input-group-append">
                                                    <asp:Button ID="btnSearch" runat="server" CssClass="btn btn-primary" Text="搜索" OnClick="btnSearch_Click" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="table-responsive">
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-hover"
                                         OnRowEditing="GridView1_RowEditing"
                                         DataKeyNames="Id" OnRowCancelingEdit="GridView1_RowCancelingEdit" 
                                         OnRowUpdating="GridView1_RowUpdating">
                                        <Columns>
                                            <asp:BoundField DataField="CourseId" HeaderText="课程编号" ReadOnly="true" />
                                            <asp:BoundField DataField="CourseName" HeaderText="课程名称" />
                                            <asp:BoundField DataField="CourseTeacher" HeaderText="授课教师" />
                                            <asp:BoundField DataField="CourseInfo" HeaderText="课程介绍" />
                                            <asp:BoundField DataField="CourseStudentNum" HeaderText="允许选课人数" />
                                            <asp:CommandField ShowEditButton="True" />
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
