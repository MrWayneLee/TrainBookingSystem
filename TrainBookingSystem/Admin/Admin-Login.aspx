<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin-Login.aspx.cs" Inherits="TrainBookingSystem.Admin.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../UI-Extends/bootstrap-4.6.0-dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../UI-Extends/bootstrap-4.6.0-dist/js/bootstrap.min.js" type="text/javascript"></script>
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
    <title>登录</title>
</head>
<body class="text-center">
    <form id="form1" runat="server" class="form-signin">
        <h1 class="h3 mb-3 font-weight-normal">Sign In</h1>
        <label for="inputUsername" class="sr-only">Username</label>
        <asp:TextBox type="text" ID="username" class="form-control" placeholder="Enter Username" runat="server"></asp:TextBox>
        <label for="inputPassword" class="sr-only">Password</label>
        <asp:TextBox type="password" ID="password" class="form-control mb-3" placeholder="Enter Password" runat="server"></asp:TextBox>
        <asp:Button class="btn btn-lg btn-primary btn-block mb-2" type="submit" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click"/>
        <asp:Label ID="info" runat="server" class="mb-3" Text=""></asp:Label>
        <p class="mt-4 text-muted">© Wayne</p>
    </form> 
</body>
</html>
