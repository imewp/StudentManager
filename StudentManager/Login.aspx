<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="StudentManager.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>登录界面</title>
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="robots" content="all,follow" />
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css" />
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css" />
    <!-- Custom Font Icons CSS-->
    <link rel="stylesheet" href="css/font.css" />
    <!-- Google fonts - Muli-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Muli:300,400,700" />
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/style.default.css"/>
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/custom.css" />
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/favicon.ico" />
   
</head>
<body>
      <div class="login-page">
      <div class="container d-flex align-items-center">
        <div class="form-holder has-shadow">
          <div class="row">
            <!-- Logo & Information Panel-->
            <div class="col-lg-6">
              <div class="info d-flex align-items-center">
                <div class="content">
                  <div class="logo">
                    <h1>学生管理系统</h1>
                  </div>
                  <p>Giving is not necessarily successful, giving up will fail.</p>
                </div>
              </div>
            </div>
            <!-- Form Panel    -->
            <div class="col-lg-6">
              <div class="form d-flex align-items-center">
                <div class="content">
                  <form method="get" class="form-validate mb-4" runat="server">
                    <div class="form-group">
                      <input id="login_username" type="text" runat="server" name="loginUsername"  data-msg="Please enter your username" class="input-material"/>
                      <label for="login-username" class="label-material">User Name</label>
                    </div>
                    <div class="form-group">
                      <input id="login_password" type="password" runat="server" name="loginPassword"  data-msg="Please enter your password" class="input-material"/>
                      <label for="login-password" class="label-material">Password</label>
                    </div>
                      
                      <asp:RadioButtonList ID="rbtnType" runat="server" RepeatDirection="Horizontal">
                          <asp:ListItem Selected="True" style="padding-right: 30px;">Administrator</asp:ListItem>
                          <asp:ListItem>Student</asp:ListItem>
                      </asp:RadioButtonList>
                    <asp:Button ID="Submit" runat="server" Text="Login" CssClass="btn btn-primary" OnClick="Submit_Click" />
                   <%-- <button type="submit" class="btn btn-primary">Login</button>--%>
                  </form><a href="#" class="forgot-pass">Forgot Password?</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- JavaScript files-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper.js/umd/popper.min.js"> </script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="vendor/chart.js/Chart.min.js"></script>
    <script src="vendor/jquery-validation/jquery.validate.min.js"></script>
    <script src="js/front.js"></script>
</body>
</html>
