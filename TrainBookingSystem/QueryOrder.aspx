<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QueryOrder.aspx.cs" Inherits="TrainBookingSystem.QueryOrder" %>

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
    <title>订单查询</title>
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
                        <a class="btn btn-md btn-primary btn-block" href="./DepositAccount.aspx">账户充值</a>
                    </div>
                </div>
            </div>
            <div class="col-md-9">
                <div class="card mb-3">
                    <div class="card-body">所有订单</div>
                </div>
                <asp:DataList ID="UserOrderList" runat="server" RepeatLayout="Flow">
                    <ItemTemplate>
                        <div class="card mb-0">
                            <div class="card-body">
                                <h3 class="card-title text-center">
                                    <strong>
                                        <asp:Label ID="Departure" runat="server" Text='<%#Eval("Departure") %>'></asp:Label>
                                        <embed src="UI-Extends/bootstrap-4.6.0-dist/fonts/svg/arrow-right.svg" class="col-md-1" style="height:0.9em" />
                                        <asp:Label ID="Arrvial" runat="server" Text='<%#Eval("Arrvial") %>'></asp:Label>
                                    </strong>
                                </h3>
                                <div class="row mb-0 text-center">
                                    <h6 class="col-md-4 card-title">编号</h6>
                                    <h6 class="col-md-4 card-title">日期</h6>
                                    <h6 class="col-md-4 card-title">开点</h6>
                                </div>
                                <div class="row mb-2 text-center">
                                    <h4 class="col-md-4 card-title"><strong><asp:Label ID="id" runat="server" Text='<%#Eval("TrainId") %>'></asp:Label></strong></h4>
                                    <h4 class="col-md-4 card-title"><strong><asp:Label ID="date" runat="server" Text='<%#GetCut(Eval("Date").ToString()) %>'></asp:Label></strong></h4>
                                    <h4 class="col-md-4 card-title"><strong><asp:Label ID="time" runat="server" Text='<%#Eval("Time") %>'></asp:Label></strong></h4>
                                </div>
                                <div class="row mb-2 text-center">
                                    <h6 class="col-md-4 card-title">坐席</h6><h6 class="col-md-4 card-title">订单状态</h6><h6 class="col-md-4 card-title">操作</h6>
                                </div>
                                <div class="row text-center">
                                    <h4 class="col-md-4 card-title"><strong><asp:Label ID="seat" runat="server" Text='<%#Eval("Seats") %>'></asp:Label></strong></h4>
                                    <h4 class="col-md-4 card-title"><strong><asp:Label ID="status" runat="server" Text='<%#Eval("Status") %>'></asp:Label></strong></h4>
                                    <asp:Button class="offset-1 col-md-2 btn btn-md btn-primary btn-block" ID="Refund" runat="server" Text="退票" date='<%#GetCut(Eval("Date").ToString()) %>' trainId='<%#Eval("TrainId") %>' OnDataBinding="Refund_DataBinding" OnClick="Refund_Click"/>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
