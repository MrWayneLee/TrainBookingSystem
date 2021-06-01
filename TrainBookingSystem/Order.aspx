<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="TrainBookingSystem.Order" %>

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
    <title>购票主页</title>
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
                        <h5 class="card-title">你好！<strong><asp:Label ID="username" runat="server" Text=""></asp:Label></strong> 用户</h5>
                        <p>当前可用余额为：</p>
                        <h1 class="display-4 text-center"><asp:Label ID="balance" runat="server" Text=""></asp:Label>￥</h1>
                    </div>
                </div>
                <div class="card p-3">
                    <div class="card-body">
                        <a class="btn btn-md btn-primary btn-block" href="./Index.aspx">返回主页</a>
                        <a class="btn btn-md btn-primary btn-block" href="./ModifyUserInfo.aspx">修改账户信息</a>
                        <a class="btn btn-md btn-primary btn-block" href="./QueryOrder.aspx">查询订单</a>
                        <a class="btn btn-md btn-primary btn-block" href="./DepositAccount.aspx">账户充值</a>
                    </div>
                </div>
            </div>
            <div class="col-md-9">
                <div class="card mb-3">
                    <div class="card-body">列车信息/购票</div>
                </div>
                <div class="card">
                    <div class="card-body">
                        <h3 class="card-title text-center">
                            <strong>
                                <asp:Label ID="Departure" runat="server" Text=""></asp:Label>
                                <embed src="UI-Extends/bootstrap-4.6.0-dist/fonts/svg/arrow-right.svg" class="col-md-1" style="height:0.9em" />
                                <asp:Label ID="Arrvial" runat="server" Text=""></asp:Label>
                            </strong>
                        </h3>
                        <div class="row mb-0 text-center">
                            <h6 class="col-md-4 card-title">编号</h6>
                            <h6 class="col-md-4 card-title">日期</h6>
                            <h6 class="col-md-4 card-title">开点</h6>
                        </div>
                        <div class="row mb-2 text-center">
                            <h4 class="col-md-4 card-title"><strong><asp:Label ID="id" runat="server" Text=""></asp:Label></strong></h4>
                            <h4 class="col-md-4 card-title"><strong><asp:Label ID="date" runat="server" Text=""></asp:Label></strong></h4>
                            <h4 class="col-md-4 card-title"><strong><asp:Label ID="time" runat="server" Text=""></asp:Label></strong></h4>
                        </div>
                        <hr />
                        <div class="row mb-2 text-center">
                            <h6 class="col-md-3 card-title">商务座</h6><h6 class="col-md-3 card-title">一等座</h6>
                            <h6 class="col-md-3 card-title">二等座</h6><h6 class="col-md-3 card-title">无座</h6>
                        </div>
                        <div class="row text-center">
                            <p class="col-md-3 lead">剩余<asp:Label ID="business" runat="server" Text=""></asp:Label></p>
                            <p class="col-md-3 lead">剩余<asp:Label ID="first" runat="server" Text=""></asp:Label></p>
                            <p class="col-md-3 lead">剩余<asp:Label ID="second" runat="server" Text=""></asp:Label></p>
                            <p class="col-md-3 lead">剩余<asp:Label ID="none" runat="server" Text=""></asp:Label></p>
                        </div>
                        <div class="row text-center">
                            <h4 class="col-md-3 card-title"><asp:Label ID="businessPrice" runat="server" Text=""></asp:Label>￥</h4>
                            <h4 class="col-md-3 card-title"><asp:Label ID="firstPrice" runat="server" Text=""></asp:Label>￥</h4>
                            <h4 class="col-md-3 card-title"><asp:Label ID="secondPrice" runat="server" Text=""></asp:Label>￥</h4>
                            <h4 class="col-md-3 card-title"><asp:Label ID="nonePrice" runat="server" Text=""></asp:Label>￥</h4>
                        </div>
                        <hr />
                        <div class="form-group row">
                            <label class="col-sm-2 offset-2 col-form-label text-right">坐席</label>
                            <div class="col-sm-3">
                                <asp:DropDownList ID="seatClass" runat="server" class="form-control">
                                    <asp:ListItem Text="-请选择-" Selected="True"></asp:ListItem>
                                    <asp:ListItem Text="商务座" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="一等座" Value="2"></asp:ListItem>
                                    <asp:ListItem Text="二等座" Value="3"></asp:ListItem>
                                    <asp:ListItem Text="无座" Value="4"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-2 offset-2 col-form-label text-right">密码</label>
                            <div class="col-sm-6">
                                <asp:TextBox type="password" ID="password" runat="server" class="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-4 offset-4">
                                <asp:Button ID="verify" runat="server" Text="预订" class="btn btn-md btn-primary btn-block" OnClick="verify_Click" />
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
