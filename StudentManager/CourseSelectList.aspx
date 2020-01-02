<%@ Page Title="" Language="C#" MasterPageFile="~/StudentTemplate.Master" AutoEventWireup="true" CodeBehind="CourseSelectList.aspx.cs" Inherits="StudentManager.CourseListStu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="HomeStu.aspx">首页</a></li>
            <li class="breadcrumb-item active">已选课程列表</li>
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
                                <div class="table-responsive">
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                        CssClass="table table-striped table-hover" DataKeyNames="Id">
                                        <Columns>
                                            <asp:BoundField DataField="CourseId" HeaderText="课程编号" ReadOnly="true" />
                                            <asp:BoundField DataField="CourseName" HeaderText="课程名称" />
                                            <asp:BoundField DataField="CourseTeacher" HeaderText="授课教师" />
                                            <asp:BoundField DataField="CourseInfo" HeaderText="课程介绍" />
                                            <asp:BoundField DataField="CourseStudentNum" HeaderText="允许选课人数" />
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
