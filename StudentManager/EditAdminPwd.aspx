<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="EditAdminPwd.aspx.cs" Inherits="StudentManager.EditAdminPwd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form name="form1" runat="server">
        旧密码：<asp:TextBox ID="txtjPwd" runat="server" TextMode="Password"></asp:TextBox><br />
        新密码:<asp:TextBox ID="txtxPwd" runat="server" TextMode="Password"></asp:TextBox><br />
        确认密码：<asp:TextBox ID="txtrPwd" runat="server" TextMode="Password"></asp:TextBox><br />
        <asp:Button ID="btnSubmit" runat="server" Text="提交" OnClick="btnSubmit_Click" />
    </form>
</asp:Content>
