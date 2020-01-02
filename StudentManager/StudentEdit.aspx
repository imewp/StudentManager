<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="StudentEdit.aspx.cs" Inherits="StudentManager.StudentEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container-fluid">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="NewsManage.aspx">首页</a></li>
            <li class="breadcrumb-item"><a href="StudentFind.aspx">学生信息列表</a></li>
            <li class="breadcrumb-item active">学生信息修改</li>
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
                                <div style="float: left; width: 70%;">
                                    <div class="form-group row">
                                        <label class="col-sm-3 form-control-label">学生登录账号</label>
                                        <div class="col-sm-9">
                                            <asp:Label ID="lblStuID" runat="server" Text="" CssClass="form-control"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="line"></div>
                                    <div class="form-group row">
                                        <label class="col-sm-3 form-control-label">学生姓名</label>
                                        <div class="col-sm-9">
                                            <asp:TextBox ID="txtStuName" runat="server" placeholder="姓名不得长于10个字" CssClass="form-control" ></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="line"></div>
                                    <div class="form-group row">
                                        <label class="col-sm-3 form-control-label">民族</label>
                                        <div class="col-sm-9">
                                            <asp:TextBox ID="txtStuNation" runat="server" placeholder="例：汉族" CssClass="form-control" ></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="line"></div>
                                    <div class="form-group row">
                                        <label class="col-sm-3 form-control-label">性别</label>
                                        <div class="col-sm-9">
                                            <input id="rdlSexMale" runat="server" type="radio" value="男" name="a" class="radio-template" />
                                            <label for="rdlSexMale" style="margin-right: 50px;">男</label>
                                            <input id="rdlSexFemale" runat="server" type="radio"  value="女" name="a" class="radio-template" />
                                            <label for="rdlSexFemale">女</label>
                                        </div>
                                    </div>
                                    <div class="line"></div>
                                    <div class="form-group row">
                                        <label class="col-sm-3 form-control-label">联系电话</label>
                                        <div class="col-sm-9">
                                            <asp:TextBox ID="txtStuTelehpone" runat="server" placeholder="例：12345679810" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="line"></div>
                                    <div class="form-group row">
                                        <label class="col-sm-3 form-control-label">QQ号码</label>
                                        <div class="col-sm-9">
                                            <asp:TextBox ID="txtStuQQ" runat="server" placeholder="例：12345679810" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="line"></div>
                                    <div class="form-group row">
                                        <label class="col-sm-3 form-control-label">所在班级</label>
                                        <div class="col-sm-9">
                                            <asp:TextBox ID="txtStuClass" runat="server" placeholder="例：XXXX级XX班" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="line"></div>
                                    <div class="form-group row">
                                        <label class="col-sm-3 form-control-label">宿舍</label>
                                        <div class="col-sm-9">
                                            <asp:TextBox ID="txtStuDormitory" runat="server" placeholder="例：XX号楼XX层XXX" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="line"></div>
                                    <div class="form-group row">
                                        <label class="col-sm-3 form-control-label">家庭住址</label>
                                        <div class="col-sm-9">
                                            <asp:TextBox ID="txtStuAddress" runat="server" placeholder="例：XX省XX市(XX县)" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>

                                </div>
                                <div class="line"></div>
                                <div class="form-group row" style="margin-right: 50px; height: 500px;">
                                    <label class="col-sm-3 form-control-label"></label>
                                    <div class="col-sm-9" style="float: right;">
                                        <asp:Image ID="Image1" runat="server" Width="140" Height="160" />
                                        <asp:FileUpload ID="fulStuPhoto" runat="server"/>
                                    </div>
                                </div>

                                <div class="line"></div>
                               <div class="form-group row">
                                    <div class="col-sm-9 ml-auto">
                                        <asp:Button ID="btnEdit" CssClass="btn btn-primary" runat="server" Text="Save changes" OnClick="btnEdit_Click"/>
                                        <asp:Button ID="btnCancel" CssClass="btn btn-secondary" runat="server" Text="Cancel"/>
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
