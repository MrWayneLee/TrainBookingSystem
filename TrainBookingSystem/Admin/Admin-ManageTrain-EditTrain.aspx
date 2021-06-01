<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin-ManageTrain-EditTrain.aspx.cs" Inherits="TrainBookingSystem.Admin.Admin_ManageTrain_EditTrain" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../UI-Extends/bootstrap-4.6.0-dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../UI-Extends/laydate/laydate.css" rel="stylesheet" />
    <script src="../UI-Extends/bootstrap-4.6.0-dist/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="../UI-Extends/laydate/laydate.js" type="text/javascript"></script>
    <style>
        body {
            margin:0;
            padding:0;
        }
    </style>
    <title>ManageTrain-Edit</title>
</head>
<body class="bg-light">
    <form id="form1" runat="server">
        <div class="container" style="margin-top:10%;margin-bottom:10%">
            <div class="row mb-4">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-body">ManageTrain-Edit</div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <div class="card mb-4">
                        <div class="card-body">
                            <a href="Admin-ManageTrain.aspx" class="btn btn-primary form-control">Back</a>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-body">
                            <asp:Button ID="Save" runat="server" Text="Save" class="btn btn-success btn-md btn-block" OnClick="Save_Click" />
                            <asp:Button ID="Reset" runat="server" Text="Reset" class="btn btn-info btn-md btn-block" />
                        </div>
                    </div>
                </div>
                <div class="col-md-9">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <h6 class="col-md-3 offset-2 card-title text-center"><strong>Departure</strong></h6>
                                <h6 class="col-md-3 offset-2 card-title text-center"><strong>Arrvial</strong></h6>
                            </div>
                            <div class="row mb-2">
                                <asp:TextBox ID="departure" runat="server" class="col-md-3 offset-2 form-control"></asp:TextBox>
                                <asp:TextBox ID="arrvial" runat="server" class="col-md-3 offset-2 form-control"></asp:TextBox>
                            </div>
                            <div class="row mb-0 text-center">
                                <h6 class="col-md-4 card-title">ID</h6>
                                <h6 class="col-md-4 card-title">DATE</h6>
                                <h6 class="col-md-4 card-title">TIME</h6>
                            </div>
                            <div class="row mb-2 text-center">
                                <div class="col-md-2 offset-1">
                                    <asp:TextBox ID="Id" runat="server" class="form-control"></asp:TextBox>
                                </div>
                                <div class="col-md-4 offset-1">
                                    <asp:TextBox ID="date" type="text" runat="server" class="form-control"></asp:TextBox>
                                </div>
                                <div class="col-md-2 offset-1">
                                    <asp:TextBox ID="time" runat="server" class="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <hr />
                            <div class="row mb-2 text-center">
                                <h6 class="col-md-3 card-title">Business</h6><h6 class="col-md-3 card-title">FirstClass</h6>
                                <h6 class="col-md-3 card-title">SecondClass</h6><h6 class="col-md-3 card-title">NoSeat</h6>
                            </div>
                            <div class="row text-center mb-3">
                                <div class="col-md-3">
                                    <asp:TextBox ID="businessSeat" runat="server" class="form-control" placeholder="Cubes"></asp:TextBox>
                                </div>
                                <div class="col-md-3">
                                    <asp:TextBox ID="firstSeat" runat="server" class="form-control" placeholder="Cubes"></asp:TextBox>
                                </div>
                                <div class="col-md-3">
                                    <asp:TextBox ID="secondSeat" runat="server" class="form-control" placeholder="Cubes"></asp:TextBox>
                                </div>
                                <div class="col-md-3">
                                    <asp:TextBox ID="noneSeat" runat="server" class="form-control" placeholder="Cubes"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row text-center">
                                <div class="col-md-3">
                                    <asp:TextBox ID="businessSeatPrice" runat="server" class="form-control" placeholder="Price" Text="180"></asp:TextBox>
                                </div>
                                <div class="col-md-3">
                                    <asp:TextBox ID="firstSeatPrice" runat="server" class="form-control" placeholder="Price" Text="110"></asp:TextBox>
                                </div>
                                <div class="col-md-3">
                                    <asp:TextBox ID="secondSeatPrice" runat="server" class="form-control" placeholder="Price" Text="70"></asp:TextBox>
                                </div>
                                <div class="col-md-3">
                                    <asp:TextBox ID="noneSeatPrice" runat="server" class="form-control" placeholder="Price" Text="70"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script>
        laydate.render({
            elem: '#date',
            format: 'yyyy/MM/dd'
        });
    </script>
</body>
</html>
