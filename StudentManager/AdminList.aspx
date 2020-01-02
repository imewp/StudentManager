<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="AdminList.aspx.cs" Inherits="StudentManager.AdminList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="NewsManage.aspx">首页</a></li>
            <li class="breadcrumb-item active">管理员列表</li>
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
                                                <input id="user_name" type="text" class="form-control" placeholder="输入用户名查找" runat="server" />
                                                <div class="input-group-append">
                                                    <asp:Button ID="btnSearch" runat="server" CssClass="btn btn-primary" Text="搜索" OnClick="btnSearch_Click" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="table-responsive">
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-hover"
                                         OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing"
                                         DataKeyNames="Id" OnRowCancelingEdit="GridView1_RowCancelingEdit" 
                                         OnRowCommand="GridView1_RowCommand" OnRowCreated="GridView1_RowCreated" 
                                         OnRowUpdating="GridView1_RowUpdating">
                                        <Columns>
                                            <asp:BoundField DataField="UserName" HeaderText="用户名" />
                                            <asp:BoundField DataField="TrueName" HeaderText="姓名" />
                                            <asp:BoundField DataField="LinkTelephone" HeaderText="联系电话" />
                                            <asp:BoundField DataField="LoginTimes" HeaderText="访问次数" ReadOnly="True" />
                                            <asp:CommandField ShowEditButton="True" />
                                            <asp:CommandField ShowDeleteButton="True" />
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="lbtnReset" runat="server"  CommandName="reset" ToolTip="重置当前用户的密码">重置</asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
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
