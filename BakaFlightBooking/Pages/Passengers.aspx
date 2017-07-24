<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Passengers.aspx.cs" Inherits="BakaFlightBooking.Pages.Passengers" %>

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
                <asp:HyperLink CssClass="list-group-item" runat="server">Search Flight</asp:HyperLink>
                <asp:HyperLink CssClass="list-group-item" runat="server">Choose Your Flight</asp:HyperLink>
                <asp:HyperLink CssClass="list-group-item" runat="server">Book A Seat</asp:HyperLink>
                <asp:HyperLink BackColor="Aquamarine" CssClass="list-group-item" runat="server">Passenger</asp:HyperLink>
                <asp:HyperLink CssClass="list-group-item" runat="server">Confirmation</asp:HyperLink>
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
                <%--Điền thông tin cá nhân--%>
                <div style="text-align: left" class="panel-heading">
                    Personal Information
                </div>
                <div class="panel-body">
                    <div class="form-group row ">
                        <div class="col-xs-3">
                            <label>Title</label>
                            <asp:DropDownList runat="server" CssClass="form-control">
                                <asp:ListItem>Mr</asp:ListItem>
                                <asp:ListItem>Mrs</asp:ListItem>
                                <asp:ListItem>Ms</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-xs-4">
                            <label for="txtFirstName">First Name</label>
                            <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" required="true"></asp:TextBox>
                        </div>
                        <div class="col-xs-4">
                            <label for="txtLastName">Last/FamilyName</label>
                            <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" required="true"></asp:TextBox>

                        </div>
                    </div>

                    <div style="text-align: left">
                    </div>
                    <%--Ngày tháng năm sinh từ Drop down default được xử lí ở aspx.cs, Default là 1/1/2017--%>
                    <div class="form-group row">
                        <div class="col-xs-3">
                            <label>Age</label>
                            <asp:TextBox runat="server" ID="txtAge" CssClass="form-control">
                            </asp:TextBox>
                        </div>
                        <div class="col-xs-3">
                            <label>Gender</label>
                            <div class="form-inline">
                                <asp:RadioButton runat="server" CssClass="form-control" id="RdrMale" GroupName="rdGender" Text="Male" Checked="true"></asp:RadioButton>
                                <asp:RadioButton runat="server" CssClass="form-control" ID="rdrFemale" GroupName="rdGender" Text="Female"></asp:RadioButton>
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
                            <asp:TextBox ID="txtTel" runat="server" CssClass="form-control" required="true"></asp:TextBox>
                        </div>
                        <div class="col-xs-3">
                            <label for="txtEmail">Email</label>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" required="true"></asp:TextBox>
                        </div>
                        <div class="col-xs-3">
                            <label for="txtStreet">Street</label>
                            <asp:TextBox ID="txtStreet" runat="server" CssClass="form-control" required="true"></asp:TextBox>
                        </div>
                        <div class="col-xs-3">
                            <label for="txtCityLocation">City Location</label>
                            <asp:TextBox ID="txtCityLocation" runat="server" CssClass="form-control" required="true"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <asp:Button ID="nxtBtn" runat="server" Text="Continue" OnClick="nxtBtn_Click" />
    </div>
</asp:Content>