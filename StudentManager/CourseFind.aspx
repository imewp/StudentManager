<%@ Page Title="" Language="C#" MasterPageFile="~/StudentTemplate.Master" AutoEventWireup="true" CodeBehind="CourseFind.aspx.cs" Inherits="StudentManager.CourseFind1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="NewsList.aspx">首页</a></li>
            <li class="breadcrumb-item active">成绩查询</li>
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
                                    <asp:DropDownList ID="DropDownList1" Style="margin-left: 20px; background-color: #fff; color: #212529;" 
                                        runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" 
                                        Font-Size="Large">
                                    </asp:DropDownList>
                                </div>
                                <div class="line"></div>
                                <div class="form-group row" style="margin-left:20px; font-size:1em;">
                                    <asp:Label ID="Label1" runat="server" style="font-size:1.1em;"></asp:Label>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
