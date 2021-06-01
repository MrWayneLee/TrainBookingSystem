<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DepositAccount.aspx.cs" Inherits="TrainBookingSystem.DepositAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="UI-Extends/bootstrap-4.6.0-dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="UI-Extends/bootstrap-4.6.0-dist/js/bootstrap.min.js" type="text/javascript"></script>
    <style>
        body {
            margin:0;
            padding:0;
        }
    </style>
    <script type="text/javascript">
        const a = document.querySelector('#a'),
            b = document.querySelector('#b'),
            c = document.querySelector('#c'),
            amount = document.querySelector('#amount');

        //a.onclick = () => {
        //    amount.innerHTML = a.innerHTML;
        //};
        //b.onclick = () => {
        //    amount.innerHTML = b.innerHTML;
        //};
        //c.onclick = () => {
        //    amount.innerHTML = c.innerHTML;
        //};

        console.log(a.innerHTML.toString());
    </script>
    <title>账户充值</title>
</head>
<body class="bg-light">
    <form id="form1" runat="server">
    <div class="container" style="margin-top:3%;margin-bottom:3%">
        <div class="jumbotron">
            <h1 class="display-4">12306铁路售票网</h1>
            <p class="lead">12306 CHINA RAILWAY</p>
        </div>
        <div class="row">
            <div class="col-md-3">
                <div class="card mb-4">
                    <div class="card-body">
                        <h5 class="card-title">你好！<strong><asp:Label ID="username" runat="server" Text="用户名"></asp:Label></strong> 用户</h5>
                        <p>当前可用余额为：</p>
                        <h1 class="display-4 text-center"><asp:Label ID="balance" runat="server" Text=""></asp:Label>￥</h1>
                    </div>
                </div>
                <div class="card p-3">
                    <div class="card-body">
                        <a class="btn btn-md btn-primary btn-block" href="./Index.aspx">返回主页</a>
                        <a class="btn btn-md btn-primary btn-block" href="./ModifyUserInfo.aspx">修改账户信息</a>
                        <a class="btn btn-md btn-primary btn-block" href="./QueryOrder.aspx">查询订单</a>
                    </div>
                </div>
            </div>
            <div class="col-md-9">
                <div class="card">
                    <div class="card-body">
                        <p class="lead">账户充值</p>
                        <hr />
                        <div class="form-group row">
                            <label class="col-sm-2 offset-2 col-form-label text-right">充值金额</label>
                            <div class="col-sm-3">
                                <asp:TextBox ID="amount" runat="server" class="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-2 offset-4"><a class="btn btn-md btn-light btn-block" id="a">50</a></div>
                            <div class="col-sm-2"><a class="btn btn-md btn-light btn-block" id="b">100</a></div>
                            <div class="col-sm-2"><a class="btn btn-md btn-light btn-block" id="c">200</a></div>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-2 offset-2 col-form-label text-right">密码</label>
                            <div class="col-sm-6">
                                <asp:TextBox type="password" ID="password" runat="server" class="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-2 offset-4">
                                <asp:Button ID="verify" runat="server" Text="充值" class="btn btn-md btn-primary btn-block" OnClick="verify_Click" />
                            </div>
                            <div class="col-sm-3">
                                <asp:Label ID="info" runat="server" Text=""></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
