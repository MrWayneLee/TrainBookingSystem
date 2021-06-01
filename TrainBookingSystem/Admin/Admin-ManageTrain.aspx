<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin-ManageTrain.aspx.cs" Inherits="TrainBookingSystem.Admin.Admin_ManageTrain" %>

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
    <title>ManageTrain</title>
</head>
<body class="bg-light">
    <form id="form1" runat="server">
        <div class="container" style="margin-top:10%;margin-bottom:10%">
            <div class="row mb-4">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-body">ManageTrain</div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <div class="card mb-4">
                        <div class="card-body">
                            <a href="Admin-Index.aspx" class="btn btn-primary form-control">Back</a>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-body">
                            <a href="Admin-ManageTrain-AddTrain.aspx" class="btn btn-primary form-control">Add</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-9">
                    <asp:DataList ID="TrainList" runat="server" RepeatLayout="Flow">
                        <ItemTemplate>
                            <div class="card mb-0">
                                <div class="card-body">
                                    <div class="row mb-1">
                                        <h3 class="col-md-2 card-title"><strong><asp:Label ID="departure" runat="server" Text='<%#Eval("Departure") %>'></asp:Label></strong></h3>
                                        <embed src="../UI-Extends/bootstrap-4.6.0-dist/fonts/svg/arrow-right.svg" class="col-md-1" style="height:2.5em" />
                                        <h3 class="col-md-2 card-title offset-1"><strong><asp:Label ID="arrival" runat="server" Text='<%#Eval("Arrvial") %>'></asp:Label></strong></h3>
                                        <div class="col-md-3 offset-3"><asp:Button class="btn btn-md btn-success btn-block" ID="Edit" runat="server" Text="Edit" key='<%#Eval("TrainId") %>' OnClick="Edit_Click" /></div>
                                    </div>
                                    <div class="row mb-2">
                                        <h5 class="col-md-3 card-title"><strong><asp:Label ID="id" runat="server" Text='<%#Eval("TrainId") %>'></asp:Label></strong></h5>
                                        <h5 class="col-md-3 card-title"><strong><asp:Label ID="date" runat="server" Text='<%#GetCut(Eval("Date").ToString()) %>'></asp:Label></strong></h5>
                                        <h5 class="col-md-2 card-title"><strong><asp:Label ID="time" runat="server" Text='<%#Eval("Time") %>'></asp:Label></strong></h5>
                                        <div class="col-md-3 offset-1"><asp:Button class="btn btn-md btn-danger btn-block" ID="Delete" runat="server" Text="Delete" key='<%#Eval("TrainId") %>' OnClick="Delete_Click" /></div>
                                    </div>
                                    <div class="row">
                                        <h6 class="col-md-2 card-title">BusinessClass</h6><h6 class="col-md-2 card-title">FirstClass</h6>
                                        <h6 class="col-md-2 card-title">SecondClass</h6><h6 class="col-md-2 card-title">NoSeat</h6>
                                    </div>
                                    <div class="row">
                                        <p class="col-md-2 lead">
                                            <asp:Label ID="business" runat="server" Text='<%#Eval("BusinessClass") %>'></asp:Label>
                                            (<strong><asp:Label ID="businessprice" runat="server" Text='<%#Eval("BusinessClassPrice") %>'></asp:Label></strong>￥)
                                        </p>
                                        <p class="col-md-2 lead">
                                            <asp:Label ID="first" runat="server" Text='<%#Eval("FirstClass") %>'></asp:Label>
                                            (<strong><asp:Label ID="firstprice" runat="server" Text='<%#Eval("FirstClassPrice") %>'></asp:Label></strong>￥)
                                        </p>
                                        <p class="col-md-2 lead">
                                            <asp:Label ID="second" runat="server" Text='<%#Eval("SecondClass") %>'></asp:Label>
                                            (<strong><asp:Label ID="secondprice" runat="server" Text='<%#Eval("SecondClassPrice") %>'></asp:Label></strong>￥)
                                        </p>
                                        <p class="col-md-2 lead">
                                            <asp:Label ID="none" runat="server" Text='<%#Eval("NoneSeat") %>'></asp:Label>
                                            (<strong><asp:Label ID="noneprice" runat="server" Text='<%#Eval("NoneSeatPrice") %>'></asp:Label></strong>￥)
                                        </p>
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
