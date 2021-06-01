<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Password.aspx.cs" Inherits="TrainBookingSystem.Password" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="UI-Extends/bootstrap-4.6.0-dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="UI-Extends/bootstrap-4.6.0-dist/js/bootstrap.min.js" type="text/javascript"></script>
    <title>忘记密码</title>
</head>
<body class="bg-light">
    <div class="container">
        <div class="py-5 text-center">
            <h2>忘记密码</h2>
            <p class="lead">请完成验证找回密码，或<a href="login.aspx">返回登录</a>。</p>
        </div>
        <div class="row">
            <div class="col-md-6 offset-3 order-md-1">
                <form class="needs-validation" runat="server">
                    <h4 class="mb-3">账号信息</h4>
                    <div class="mb-4">
                        <label for="username">用户名</label>
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text">@</span>
                            </div>
                        <asp:TextBox ID="username" runat="server" type="text" class="form-control" placeholder="在此处键入用户名"></asp:TextBox>
                        </div>
                    </div>
                    <asp:Button ID="Verify" runat="server" Text="验证用户名" class="btn btn-primary btn-md btn-block mb-3" OnClick="Verify_Click"/>
                    <div class="row mb-3">
                        <div class="col-md-12 text-center">
                    <asp:Label ID="info" class="mb-3" runat="server" Text=""></asp:Label>
                        </div>
                    </div>
                    <div class="row" runat="server" id="qa">
                        <div class="col-md-12 mb-3">
                            <label for="answer">找回密码问题</label>
                            <asp:TextBox ID="Question" type="text" class="form-control" runat="server" MaxLength="100" ReadOnly="true"></asp:TextBox>
                        </div>
                        <div class="col-md-12 mb-3">
                            <label for="answer">答案</label>
                            <asp:TextBox ID="Answer" type="text" class="form-control" runat="server" MaxLength="100"></asp:TextBox>
                        </div>
                        <div class="col-md-12 mb-3">
                            <asp:Button ID="VerifyAnswer" runat="server" Text="验证答案" class="btn btn-primary btn-md btn-block mb-3" OnClick="VerifyAnswer_Click" />
                        </div>
                    </div>
                    <div class="row" runat="server" id="pw">
                        <div class="col-md-12 mb-3">
                            <label for="answer">新密码</label>
                            <asp:TextBox ID="password" type="text" class="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-12 mb-3">
                            <label for="answer">确认新密码</label>
                            <asp:TextBox ID="passwordCon" type="text" class="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-12 mb-3">
                            <asp:Button ID="ChangePassword" runat="server" Text="更改密码" class="btn btn-primary btn-md btn-block" OnClick="ChangePassword_Click" />
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
