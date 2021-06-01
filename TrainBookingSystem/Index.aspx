<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="TrainBookingSystem.Index" %>

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
                        <h5 class="card-title">你好！<strong><asp:Label ID="username" runat="server" Text="用户名"></asp:Label></strong> 用户</h5>
                        <p>当前可用余额为：</p>
                        <h1 class="display-4 text-center"><asp:Label ID="balance" runat="server" Text=""></asp:Label>￥</h1>
                    </div>
                </div>
                <div class="card p-3">
                    <div class="card-body">
                        <a class="btn btn-md btn-primary btn-block" href="./ModifyUserInfo.aspx">修改账户信息</a>
                        <a class="btn btn-md btn-primary btn-block" href="./QueryOrder.aspx">查询订单</a>
                        <a class="btn btn-md btn-primary btn-block" href="./DepositAccount.aspx">账户充值</a>
                    </div>
                </div>
            </div>
            <div class="col-md-9">
                <div class="card mb-3">
                    <div class="card-body">

                    </div>
                </div>
                <hr />
                <asp:DataList ID="TrainList" runat="server" RepeatLayout="Flow">
                    <ItemTemplate>
                        <div class="card mb-0">
                            <div class="card-body">
                                <div class="row mb-1">
                                    <h3 class="col-md-2 card-title"><strong><asp:Label ID="departure" runat="server" Text='<%#Eval("Departure") %>'></asp:Label></strong></h3>
                                    <embed src="UI-Extends/bootstrap-4.6.0-dist/fonts/svg/arrow-right.svg" class="col-md-1" style="height:2.5em" />
                                    <h3 class="col-md-2 card-title offset-1"><strong><asp:Label ID="arrival" runat="server" Text='<%#Eval("Arrvial") %>'></asp:Label></strong></h3>
                                    <div class="col-md-2 offset-4"><asp:Button class="btn btn-md btn-primary btn-block" ID="Purchase" runat="server" Text="预订" TrainId='<%#Eval("TrainId") %>' OnClick="Purchase_Click"  /></div>
                                </div>
                                <div class="row mb-2">
                                    <h5 class="col-md-3 card-title"><strong><asp:Label ID="id" runat="server" Text='<%#Eval("TrainId") %>'></asp:Label></strong></h5>
                                    <h5 class="col-md-3 card-title"><strong><asp:Label ID="date" runat="server" Text='<%#GetCut(Eval("Date").ToString()) %>'></asp:Label></strong></h5>
                                    <h5 class="col-md-2 card-title"><strong><asp:Label ID="time" runat="server" Text='<%#Eval("Time") %>'></asp:Label></strong></h5>
                                </div>
                                <div class="row">
                                    <h6 class="col-md-2 card-title">商务座</h6><h6 class="col-md-2 card-title">一等座</h6>
                                    <h6 class="col-md-2 card-title">二等座</h6><h6 class="col-md-2 card-title">无座</h6>
                                </div>
                                <div class="row">
                                    <p class="col-md-2 lead"><asp:Label ID="business" runat="server" Text='<%#Eval("BusinessClass") %>'></asp:Label></p>
                                    <p class="col-md-2 lead"><asp:Label ID="first" runat="server" Text='<%#Eval("FirstClass") %>'></asp:Label></p>
                                    <p class="col-md-2 lead"><asp:Label ID="second" runat="server" Text='<%#Eval("SecondClass") %>'></asp:Label></p>
                                    <p class="col-md-2 lead"><asp:Label ID="none" runat="server" Text='<%#Eval("NoneSeat") %>'></asp:Label></p>
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
