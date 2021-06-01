<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin-ManageOrder.aspx.cs" Inherits="TrainBookingSystem.Admin.Admin_ManageOrder" %>

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
    <title>ManageOrder</title>
</head>
<body class="bg-light">
    <form id="form1" runat="server">
        <div class="container" style="margin-top:10%;margin-bottom:10%">
            <div class="row mb-4">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-body">ManageOrder</div>
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
                </div>
                <div class="col-md-9">
                    <asp:DataList ID="UserOrderList" runat="server" RepeatLayout="Flow">
                        <ItemTemplate>
                            <div class="card mb-0">
                                <div class="card-body">
                                    <h3 class="card-title text-center">
                                        <strong>
                                            <asp:Label ID="Departure" runat="server" Text='<%#Eval("Departure") %>'></asp:Label>
                                            <embed src="../UI-Extends/bootstrap-4.6.0-dist/fonts/svg/arrow-right.svg" class="col-md-1" style="height:0.9em" />
                                            <asp:Label ID="Arrvial" runat="server" Text='<%#Eval("Arrvial") %>'></asp:Label>
                                        </strong>
                                    </h3>
                                    <div class="row mb-0 text-center">
                                        <h6 class="col-md-4 card-title">ID</h6>
                                        <h6 class="col-md-4 card-title">DATE</h6>
                                        <h6 class="col-md-4 card-title">TIME</h6>
                                    </div>
                                    <div class="row mb-2 text-center">
                                        <h4 class="col-md-4 card-title"><strong><asp:Label ID="id" runat="server" Text='<%#Eval("TrainId") %>'></asp:Label></strong></h4>
                                        <h4 class="col-md-4 card-title"><strong><asp:Label ID="date" runat="server" Text='<%#GetCut(Eval("Date").ToString()) %>'></asp:Label></strong></h4>
                                        <h4 class="col-md-4 card-title"><strong><asp:Label ID="time" runat="server" Text='<%#Eval("Time") %>'></asp:Label></strong></h4>
                                    </div>
                                    <div class="row mb-2 text-center">
                                        <h6 class="col-md-4 card-title">Cubes</h6><h6 class="col-md-4 card-title">Status</h6><h6 class="col-md-4 card-title">Buyer</h6>
                                    </div>
                                    <div class="row mb-2 text-center">
                                        <h4 class="col-md-4 card-title"><strong><asp:Label ID="seat" runat="server" Text='<%#Eval("Seats") %>'></asp:Label></strong></h4>
                                        <h4 class="col-md-4 card-title"><strong><asp:Label ID="status" runat="server" Text='<%#Eval("Status") %>'></asp:Label></strong></h4>
                                        <h4 class="col-md-4 card-title"><strong><asp:Label ID="username" runat="server" Text='<%#Eval("Username") %>'></asp:Label></strong></h4>
                                    </div>
                                    <div class="row text-center">
                                        <asp:Button class="offset-1 col-md-2 btn btn-md btn-danger btn-block" ID="Delete" runat="server" Text="Delete" date='<%#GetCut(Eval("Date").ToString()) %>' trainId='<%#Eval("TrainId") %>' username='<%#Eval("Username") %>' OnClick="Delete_Click" />
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
