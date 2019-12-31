<%@ Page Title="" Language="C#" MasterPageFile="~/StudentTemplate.Master" AutoEventWireup="true" CodeBehind="EditStuPwd.aspx.cs" Inherits="StudentManager.EditStuPwd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="HomeStu.aspx">首页</a></li>
            <li class="breadcrumb-item active">修改密码</li>
        </ul>
    </div>
    <form name="form1" runat="server">
        旧密码：<asp:TextBox ID="txtjPwd" runat="server" TextMode="Password"></asp:TextBox><br />
        新密码:<asp:TextBox ID="txtxPwd" runat="server" TextMode="Password"></asp:TextBox><br />
        确认密码：<asp:TextBox ID="txtrPwd" runat="server" TextMode="Password"></asp:TextBox><br />
        <asp:Button ID="btnSubmit" runat="server" Text="提交" OnClick="btnSubmit_Click" />
    </form>
</asp:Content>
