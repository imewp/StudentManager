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
                        <div class="title"><strong>成绩查询</strong></div>
                        <div class="block-body">
                            <form class="form-horizontal" runat="server">
                                <div class="table-responsive">
                                    <asp:GridView ID="GridView1" runat="server" DataKeyNames="Id" CssClass="table table-striped table-hover" AutoGenerateColumns="False" OnRowDataBound="GridView1_RowDataBound">
                                        <Columns>
                                            <asp:BoundField HeaderText="课程" DataField="CourseId">
                                                <ItemStyle Width="150px" Font-Size="1.1em" Height="30px" />
                                                <HeaderStyle Font-Size="1.2em"/>
                                            </asp:BoundField>
                                            <asp:BoundField DataField="CourseScore" HeaderText="成绩">
                                                <ItemStyle Width="150px" Font-Size="1.1em"/>
                                                <HeaderStyle Font-Size="1.2em" />
                                            </asp:BoundField>
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
