<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin-ManageUser-AddUser.aspx.cs" Inherits="TrainBookingSystem.Admin.Admin_ManageUser_AddUser" %>

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
    <title>ManageUser-Add</title>
</head>
<body class="bg-light">
    <form id="form1" runat="server">
        <div class="container" style="margin-top:10%;margin-bottom:10%">
            <div class="row mb-4">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-body">ManageUser-Add</div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <div class="card mb-4">
                        <div class="card-body">
                            <a href="Admin-ManageUser.aspx" class="btn btn-primary form-control">Back</a>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-body">
                            <asp:Button ID="Submit" runat="server" Text="Submit" class="btn btn-success btn-md btn-block" OnClick="Submit_Click" />
                            <input type="reset" class="btn btn-info btn-md btn-block" value="Reset" />
                            <asp:Label ID="info" runat="server" Text=""></asp:Label>
                        </div>
                    </div>
                </div>
                <div class="col-md-9">
                    <div class="card">
                        <div class="card-body">
                            <div class="row mb-1">
                                <h6 class="col-md-4 card-title">Name</h6>
                                <h6 class="col-md-5 card-title">ID</h6>
                                <h6 class="col-md-3 card-title">Authority</h6>
                            </div>
                            <div class="row mb-2">
                                <div class="col-md-4"><asp:TextBox ID="name" runat="server" class="form-control" MaxLength="5"></asp:TextBox></div>
                                <div class="col-md-5"><asp:TextBox ID="id" runat="server" class="form-control" MaxLength="18"></asp:TextBox></div>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="authority" runat="server" class="form-control">
                                        <asp:ListItem Text="-Please Select-" Selected="True"></asp:ListItem>
                                        <asp:ListItem Text="Admin" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="User" Value="0"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="row mb-1">
                                <h6 class="col-md-4 card-title">Username</h6>
                                <h6 class="col-md-4 card-title">Password</h6>
                                <h6 class="col-md-4 card-title">Balance</h6>
                            </div>
                            <div class="row mb-2">
                                <div class="col-md-4"><asp:TextBox ID="username" runat="server" class="form-control" MaxLength="18"></asp:TextBox></div>
                                <div class="col-md-4"><asp:TextBox ID="password" runat="server" class="form-control" MaxLength="18"></asp:TextBox></div>
                                <div class="col-md-4"><asp:TextBox ID="balance" runat="server" class="form-control" Text="0"></asp:TextBox></div>
                            </div>
                            <div class="row mb-1">
                                <h6 class="col-md-4 card-title">Question</h6>
                            </div>
                            <div class="row mb-2">
                                <div class="col-md-12"><asp:TextBox ID="question" runat="server" class="form-control" MaxLength="100"></asp:TextBox></div>
                            </div>
                            <div class="row mb-1">
                                <h6 class="col-md-4 card-title">Answer</h6>
                            </div>
                            <div class="row mb-2">
                                <div class="col-md-12"><asp:TextBox ID="answer" runat="server" class="form-control" MaxLength="100"></asp:TextBox></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
