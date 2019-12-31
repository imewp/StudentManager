<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="CourseAdd.aspx.cs" Inherits="StudentManager.CourseAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="Home.aspx">首页</a></li>
            <li class="breadcrumb-item"><a href="CourseList.aspx">课程列表</a></li>
            <li class="breadcrumb-item active">添加课程</li>
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
                                    <label class="col-sm-3 form-control-label">课&nbsp;程&nbsp;编&nbsp;号</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="txtCourseId" runat="server" placeholder="课程编号不得长于20个字符" CssClass="form-control" AutoPostBack="True" OnTextChanged="txtCourseId_TextChanged"></asp:TextBox>
                                        
                                    </div>
                                </div>
                                <div class="line"></div>
                                <div class="form-group row">
                                    <label class="col-sm-3 form-control-label">课&nbsp;程&nbsp;名&nbsp;称</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="txtCourseName" runat="server" placeholder="课程名称不得长于10个字" CssClass="form-control"></asp:TextBox>
                                        
                                    </div>
                                </div>
                                <div class="line"></div>
                                <div class="form-group row">
                                    <label class="col-sm-3 form-control-label">授&nbsp;课&nbsp;教&nbsp;师</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="txtCourseTeacher" runat="server" placeholder="请输入授课教师姓名" CssClass="form-control"></asp:TextBox>
                                       
                                    </div>
                                </div>
                                <div class="line"></div>
                                <div class="form-group row">
                                    <label class="col-sm-3 form-control-label">课&nbsp;程&nbsp;介&nbsp;绍</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="txtCourseInfo" runat="server" placeholder="请输入有关于课程的介绍" CssClass="form-control"></asp:TextBox>
                                        
                                    </div>
                                </div>
                                <div class="line"></div>
                                <div class="form-group row">
                                    <label class="col-sm-3 form-control-label">允许选课人数</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="txtCourseStudentNum" runat="server" placeholder="请限制课程最多选课人数" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="line"></div>
                                <div class="form-group row">
                                    <div class="col-sm-9 ml-auto">
                                        <asp:Button ID="btnAdd" CssClass="btn btn-primary" runat="server" Text="Save" OnClick="btnAdd_Click" />
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
