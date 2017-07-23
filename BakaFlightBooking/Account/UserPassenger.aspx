<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserPassenger.aspx.cs" Inherits="BakaFlightBooking.Account.UserPassenger" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CustomHead" runat="server">
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="cangiua " style="text-align: center">
        <h1 class="fancy">Passenger Corners</h1>
        <h3>Please fill all information below:</h3>
    </div>
    <div class="col-sm-12 ">
        <!--Personal Information panel-->
        <div class="col-sm-3">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" style="height:450px;width:100%">
                    <div class="item active">
                        <img src="../Images/flight1.jpg" alt="1">
                    </div>

                    <div class="item">
                        <img src="../Images/flight2.jpg" alt="2">
                    </div>

                    <div class="item">
                        <img src="../Images/flight3.png" alt="3">
                    </div>
                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
        <!--để trống 2 sm bên tay trái -->
 
        <div class="col-sm-9">
            <div class="panel-group">
                <div class="panel panel-info" style="width:90%">
                    <div style="text-align: left" class="panel-heading">
                        Personal Information
                    </div>
                    <div class="panel-body">
                        <div class="form-group row ">
                            <div class="col-xs-3">
                                <label>Title</label>
                                <asp:DropDownList runat="server" CssClass="form-control">
                                    <asp:ListItem></asp:ListItem>
                                    <asp:ListItem>Mr</asp:ListItem>
                                    <asp:ListItem>Mrs</asp:ListItem>
                                    <asp:ListItem>Ms</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-xs-4">
                                <label for="txtFirstName">First Name</label>
                                <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-xs-4">
                                <label for="txtLastName">Last/FamilyName</label>
                                <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>

                            </div>
                        </div>

                        <div style="text-align: left">
                        </div>
                        <div class="form-group row">
                            <div class="col-xs-3">
                                <label>Month</label>
                                <asp:DropDownList runat="server" ID="drpMonth" CssClass="form-control">
                                </asp:DropDownList>
                            </div>
                            <div class="col-xs-3">
                                <label>Date</label>
                                <asp:DropDownList runat="server" ID="drpDay" CssClass="form-control">
                                </asp:DropDownList>
                            </div>
                            <div class="col-xs-3">
                                <label>Year</label>
                                <asp:DropDownList runat="server" ID="drpYear" CssClass="form-control">
                                </asp:DropDownList>
                            </div>
                            <div class="col-xs-3">
                                <label>Gender</label>
                                <div class="form-inline">
                                    <asp:RadioButton runat="server" CssClass="form-control" GroupName="rdGender" Text="Male"></asp:RadioButton>
                                    <asp:RadioButton runat="server" CssClass="form-control" GroupName="rdGender" Text="Female"></asp:RadioButton>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--Contact Information panel-->

            <div class="panel-group">
                <div class="panel panel-info" style="width:90%">
                    <div style="text-align: left" class="panel-heading">
                        Contact Information
                    </div>
                    <div class="panel-body">
                        <div class="form-group row ">
                            <div class="col-xs-3">
                                <label for="txtTel">Tel</label>
                                <asp:TextBox ID="txtTel" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-xs-4">
                                <label for="txtEmail">Email</label>
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-xs-4">
                                <label for="txtStreet">Street</label>
                                <asp:TextBox ID="txtStreet" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    
                        <asp:Button  CssClass="btn btn-info navbar-form navbar-right form-control" ID="btnContinue" runat="server" Text="Continue" Height="40px" Width="150px" OnClick="btnContinue_Click" />

                </div>
            </div>
             
        </div>
  
    </div>


</asp:Content>
