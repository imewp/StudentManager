<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="CourseScore.aspx.cs" Inherits="StudentManager.CourseScore" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="Home.aspx">首页</a></li>
            <li class="breadcrumb-item active">录入成绩</li>
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
                                
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
