<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TrainBookingSystem.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="UI-Extends/bootstrap-4.6.0-dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="UI-Extends/bootstrap-4.6.0-dist/js/bootstrap.min.js" type="text/javascript"></script>
    <style>
        html,body {
              height: 100%;
        }
        body {
            display: -ms-flexbox;
            display: flex;
            -ms-flex-align: center;
            align-items: center;
            padding-top: 40px;
            padding-bottom: 40px;
            background-color: #f5f5f5;
        }
        .form-signin {
            width: 100%;
            max-width: 330px;
            padding: 15px;
            margin: auto;
        }
        .form-signin .checkbox {
            font-weight: 400;
        }
        .form-signin .form-control {
            position: relative;
            box-sizing: border-box;
            height: auto;
            padding: 10px;
            font-size: 16px;
        }
        .form-signin .form-control:focus {
            z-index: 2;
        }
        .form-signin input[type="text"] {
            margin-bottom: -1px;
            border-bottom-right-radius: 0;
            border-bottom-left-radius: 0;
        }
        .form-signin input[type="password"] {
            margin-bottom: 10px;
            border-top-left-radius: 0;
            border-top-right-radius: 0;
        }
    </style>
    <title>Background</title>
</head>
<body class="text-center">
    <form id="form1" runat="server" class="form-signin">
        <h1 class="h3 mb-3 font-weight-normal">请登录</h1>
        <label for="inputUsername" class="sr-only">用户名</label>
        <asp:TextBox type="text" ID="username" class="form-control" placeholder="用户名" runat="server"></asp:TextBox>
        <label for="inputPassword" class="sr-only">密码</label>
        <asp:TextBox type="password" ID="password" class="form-control" placeholder="密码" runat="server"></asp:TextBox>
        <div class="checkbox mb-3">
            <label>
                <input type="checkbox" value="remember-me" /> 记住密码
            </label>
        </div>
        <asp:Button class="btn btn-lg btn-primary btn-block mb-3" type="submit" ID="Button1" runat="server" Text="登录" OnClick="Button1_Click" />
        <div class="row">
            <div class="col-md-6">
                <a class="btn btn-md btn-link btn-block" href="Register.aspx">注册账号</a>
            </div>
            <div class="col-md-6">
                <a class="btn btn-md btn-link btn-block" href="Password.aspx">忘记密码？</a>
            </div>
        </div>
        <p class="mt-5 mb-3 text-muted">© <a href="Admin/Admin-Login.aspx">Wayne</a></p>
    </form> 
</body>
</html>
