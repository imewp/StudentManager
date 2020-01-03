<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="CourseScore.aspx.cs" Inherits="StudentManager.CourseScore" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="NewsManage.aspx">首页</a></li>
            <li class="breadcrumb-item active">录入成绩</li>
        </ul>
    </div>

    <section class="no-padding-top">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="block">
                        <div class="title"><strong></strong></div>
                        <div class="block-body">
                            <form class="form-horizontal" runat="server">
                                <div class="form-group row">
                                    <asp:DropDownList ID="DropDownList1" style="margin-left:20px; background-color: #fff; color: #212529;" 
                                        runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" 
                                        Font-Size="Large" Width="150px">
                                    </asp:DropDownList>
                                </div>

                                <div class="line"></div>
                                <div class="form-group row">
                                    <div class="table-responsive" style="margin:20px;">
                                        <asp:GridView ID="GridView1" runat="server" DataKeyNames="Id" AutoGenerateColumns="False" OnRowDataBound="GridView1_RowDataBound">
                                            <Columns>
                                                <asp:BoundField HeaderText="姓名" DataField="StudentId">
                                                    <ItemStyle Width="150px" Font-Size="1.0em" HorizontalAlign="Center" />
                                                    <HeaderStyle Font-Size="1.2em" />
                                                </asp:BoundField>
                                                <asp:BoundField HeaderText="课程" DataField="CourseId">
                                                    <ItemStyle Width="150px" Font-Size="1.0em" HorizontalAlign="Center" />
                                                    <HeaderStyle Font-Size="1.2em"/>
                                                </asp:BoundField>
                                                <asp:TemplateField HeaderText="成绩">
                                                    <HeaderStyle Font-Size="1.2em" Width="150px" />
                                                    <ItemTemplate>
                                                        <asp:TextBox ID="score" CssClass="form-control" runat="server" Font-Size="1.0em" HorizontalAlign="Center"></asp:TextBox>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="line"></div>
                                    <div class="input-group-prepend">
                                        <asp:Button ID="Button1" runat="server" style="margin-left:20px;" CssClass="btn btn-primary" Text="提交成绩" OnClick="Button1_Click" />
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
