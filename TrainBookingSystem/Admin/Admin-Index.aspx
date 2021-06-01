<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin-Index.aspx.cs" Inherits="TrainBookingSystem.Admin.Admin_Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../UI-Extends/bootstrap-4.6.0-dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../UI-Extends/bootstrap-4.6.0-dist/js/bootstrap.min.js" type="text/javascript"></script>
    <style>
        body {
            margin:0;
            padding:0;
        }
    </style>
    <title>Main</title>
</head>
<body class="bg-light">
    <form id="form1" runat="server">
        <div class="container text-center" style="margin-top:10%;margin-bottom:10%">
            <div class="row mb-4">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-body">你好！<strong><asp:Label ID="username" runat="server" Text="用户名"></asp:Label></strong> 管理员</div>
                    </div>
                </div>
            </div>
            <div class="row mb-4">
                <div class="col-md-4">
                    <div class="card" style="height:150px">
                        <a class="card-body btn-light btn" href="Admin-ManageUser.aspx"><span style="line-height:100px">用户管理</span></a>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card" style="height:150px">
                        <a class="card-body btn-light btn" href="Admin-ManageTrain.aspx"><span style="line-height:100px">列车管理</span></a>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card" style="height:150px">
                        <a class="card-body btn-light btn" href="Admin-ManageOrder.aspx"><span style="line-height:100px">订单管理</span></a>
                    </div>
                </div>
            </div>
            <div class="row mb-4">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-body">后台</div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
