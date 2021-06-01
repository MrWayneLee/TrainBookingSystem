<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin-ManageUser.aspx.cs" Inherits="TrainBookingSystem.Admin.Admin_ManageUser" %>

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
    <title>ManageUser</title>
</head>
<body class="bg-light">
    <form id="form1" runat="server">
        <div class="container" style="margin-top:10%;margin-bottom:10%">
            <div class="row mb-4">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-body">ManageUser</div>
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
                            <a href="Admin-ManageUser-AddUser.aspx" class="btn btn-primary form-control">Add</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-9">
                    <asp:DataList ID="UserList" runat="server" RepeatLayout="Flow">
                        <ItemTemplate>
                            <div class="card mb-0">
                                <div class="card-body">
                                    <div class="row mb-0">
                                        <h6 class="col-md-4 card-title">Name</h6>
                                        <h6 class="col-md-8 card-title">ID</h6>
                                    </div>
                                    <div class="row mb-0">
                                        <h4 class="col-md-4 card-title"><strong><asp:Label ID="name" runat="server" Text='<%#Eval("Name") %>'></asp:Label></strong></h4>
                                        <h4 class="col-md-8 card-title"><strong><asp:Label ID="id" runat="server" Text='<%#Eval("Id") %>'></asp:Label></strong></h4>
                                    </div>
                                    <div class="row mb-0">
                                        <h6 class="col-md-4 card-title">Username</h6>
                                        <h6 class="col-md-4 card-title">Password</h6>
                                        <h6 class="col-md-4 card-title">Balance</h6>
                                    </div>
                                    <div class="row mb-0">
                                        <h4 class="col-md-4 card-title"><strong><asp:Label ID="username" runat="server" Text='<%#Eval("Username") %>'></asp:Label></strong></h4>
                                        <h4 class="col-md-4 card-title"><strong><asp:Label ID="password" runat="server" Text='<%#Eval("Password") %>'></asp:Label></strong></h4>
                                        <h4 class="col-md-4 card-title"><strong><asp:Label ID="balance" runat="server" Text='<%#Eval("Balance") %>'></asp:Label></strong></h4>
                                    </div>
                                    <div class="row mb-0">
                                        <h6 class="col-md-4 card-title">Question</h6>
                                    </div>
                                    <div class="row mb-0">
                                        <h4 class="col-md-4 card-title"><strong><asp:Label ID="question" runat="server" Text='<%#Eval("Question") %>'></asp:Label></strong></h4>
                                    </div>
                                    <div class="row mb-0">
                                        <h6 class="col-md-4 card-title">Answer</h6>
                                    </div>
                                    <div class="row mb-0">
                                        <h4 class="col-md-4 card-title"><strong><asp:Label ID="answer" runat="server" Text='<%#Eval("Answer") %>'></asp:Label></strong></h4>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-3"><asp:Button ID="Edit" runat="server" Text="Edit" class="btn btn-info form-control" key='<%#Eval("Username") %>' OnClick="Edit_Click" /></div>
                                        <div class="col-md-3"><asp:Button ID="Delete" runat="server" Text="Delete" class="btn btn-danger form-control" key='<%#Eval("Username") %>' OnClick="Delete_Click" /></div>
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
