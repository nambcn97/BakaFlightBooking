<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserPassenger.aspx.cs" Inherits="BakaFlightBooking.Account.UserPassenger" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CustomHead" runat="server">
       <style type="text/css">
        .cangiua {
            display: block;
            margin-left: auto;
            margin-right: auto;
            margin: 0 auto;
        }

        .alightTable {
            padding-left: 10px;
            padding-right: 10px;
        }


        .auto-style7 {
            width: 90px;
            height: 45px;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="col-sm-13 ">
        <!--Personal Information panel-->

        <br />
        <br />
         <!-- Đây là cái navigator -->
        <div style="text-align: left" class="col-sm-2">
            <div class="list-group">
                <asp:HyperLink CssClass="list-group-item" runat="server" NavigateUrl="~/Account/UserSearch.aspx">Search Flight</asp:HyperLink>
                <asp:HyperLink CssClass="list-group-item" runat="server" NavigateUrl="~/Account/UserFlightBooking.aspx">Choose Your Flight</asp:HyperLink>
                <asp:HyperLink BackColor="Aquamarine" CssClass="list-group-item" runat="server" NavigateUrl="~/Account/UserPassenger.aspx">Passenger</asp:HyperLink>
                <asp:HyperLink CssClass="list-group-item" runat="server" NavigateUrl="~/Account/UserChoosingSeat.aspx">Book A Seat</asp:HyperLink>
                <asp:HyperLink CssClass="list-group-item" runat="server" NavigateUrl="~/Account/UserCheckOut.aspx">Payment</asp:HyperLink>
                <asp:HyperLink CssClass="list-group-item" runat="server" NavigateUrl="~/Account/UserConfirmation.aspx">Confirmation</asp:HyperLink>
            </div>

        </div>
    </div>

    <!--Đây là phần nội dung -->
    <div class="col-sm-10">
    <div class="cangiua " style="text-align: center">
        <h1 class="fancy">Passenger Corners</h1>
        <h3>Please fill all information below:</h3>
    </div>
        <div class="panel-group">
            <div class="panel panel-info" style="width: 90%">
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
            <div class="panel panel-info" style="width: 90%">
                <div style="text-align: left" class="panel-heading">
                    Contact Information
                </div>
                <div class="panel-body">
                    <div class="form-group row ">
                        <div class="col-xs-3">
                            <label for="txtTel">Tel</label>
                            <asp:TextBox ID="txtTel" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-xs-3">
                            <label for="txtEmail">Email</label>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-xs-3">
                            <label for="txtStreet">Street</label>
                            <asp:TextBox ID="txtStreet" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-xs-3">
                            <label for="txtCityLocation">City Location</label>
                            <asp:TextBox ID="txtCityLocation" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>

                <asp:Button CssClass="btn btn-info navbar-form navbar-right form-control" ID="btnContinue" runat="server" Text="Continue" Height="40px" Width="150px" OnClick="btnContinue_Click" />

            </div>
        </div>

    </div>


</asp:Content>
