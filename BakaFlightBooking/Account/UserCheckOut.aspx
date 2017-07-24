<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserCheckOut.aspx.cs" Inherits="BakaFlightBooking.Account.UserCheckOut" %>

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

        .auto-style8 {
            width: 400px;
            height: 65px;
            padding-left: 15px;
        }

        .auto-style10 {
            width: 150px;
            height: 65px;
        }

        .auto-style11 {
            display: block;
            margin-left: auto;
            margin-right: auto;
            margin: 0 auto 10px auto;
        }
    </style>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="cangiua col-sm-13" style="text-align: center">
        <div class="row">
            <br />
            <br />
            <!-- Đây là cái navigator -->
            <div style="text-align: left" class="col-sm-2">
                <div class="list-group">
                    <asp:HyperLink CssClass="list-group-item" runat="server" NavigateUrl="~/Account/UserSearch.aspx">Search Flight</asp:HyperLink>
                    <asp:HyperLink CssClass="list-group-item" runat="server" NavigateUrl="~/Account/UserFlightBooking.aspx">Choose Your Flight</asp:HyperLink>
                    <asp:HyperLink CssClass="list-group-item " runat="server" NavigateUrl="~/Account/UserPassenger.aspx">Passenger</asp:HyperLink>
                    <asp:HyperLink CssClass="list-group-item" runat="server" NavigateUrl="~/Account/UserChoosingSeat.aspx">Book A Seat</asp:HyperLink>
                    <asp:HyperLink BackColor="Aquamarine" CssClass="list-group-item" runat="server" NavigateUrl="~/Account/UserCheckOut.aspx">Payment</asp:HyperLink>
                     <asp:HyperLink CssClass="list-group-item" runat="server" NavigateUrl="~/Account/UserConfirmation.aspx">Confirmation</asp:HyperLink>
                </div>
            </div>


            <!-- Đây là phần nội dung của trang -->
            <div class="col-sm-10">
                 <h1 class="fancy">Payment</h1>
                <h2>Departure Flight Payment</h2>
                <div class="cangiua">
                    <!--Hiện thông tin từ search, txtFlyingFrom sẽ truyền dữ liệu từ drpOrigin_Airport, txtFlyingTo sẽ truyền dữ liệu từ drpDestination_Airport-->
                    <table style="max-width: 600px; text-align: left" class="auto-style11">
                        <tr class="alightTable">
                            <td class="auto-style8">Your Flight No
                            </td>
                            <td class="auto-style10">
                                <asp:TextBox ID="txtFlightNo" runat="server" CssClass="w3-input" Width="140px" ReadOnly="true"></asp:TextBox>
                            </td>
                            <td class="auto-style8">Class
                            </td>
                            <td class="auto-style10">
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="w3-input" Width="140px" ReadOnly="true"></asp:TextBox>
                            </td>

                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td class="auto-style8">Price</td>
                            <td class="auto-style10">
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Width="100px" ReadOnly="true"></asp:TextBox></td>
                        </tr>
                    </table>
                    <br />
                </div>
                <br />
            
                <h2>Arrival Flight Payment</h2>
                <div class="cangiua">
                    <!--Hiện thông tin từ search, txtFlyingFrom sẽ truyền dữ liệu từ drpOrigin_Airport, txtFlyingTo sẽ truyền dữ liệu từ drpDestination_Airport-->
                    <table style="max-width: 600px; text-align: left" class="auto-style11">
                        <tr class="alightTable">
                            <td class="auto-style8">Your Flight No
                            </td>
                            <td class="auto-style10">
                                <asp:TextBox ID="TextBox3" runat="server" CssClass="w3-input" Width="140px" ReadOnly="true"></asp:TextBox>
                            </td>
                            <td class="auto-style8">Class
                            </td>
                            <td class="auto-style10">
                                <asp:TextBox ID="TextBox4" runat="server" CssClass="w3-input" Width="140px" ReadOnly="true"></asp:TextBox>
                            </td>

                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td class="auto-style8">Price</td>
                            <td class="auto-style10">
                                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" Width="100px" ReadOnly="true"></asp:TextBox></td>
                        </tr>
                    </table>
                    <br />
                </div>
                <table class="navbar-right">
                  
                    <tr>
                         <td style="vertical-align:central">
                            <asp:CheckBox runat="server" Text="Check this box if you indicate that you really want to buy this." Font-Size="Large" Height="40px" /></td>
                          <td style="width: 40px"></td>
                        <td style="padding-right: 15px">Total</td>
                        <td>
                            <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" Height="40px" Width="100px" ReadOnly="true"></asp:TextBox></td>
                        <td style="width: 40px"></td>
                        <td>
                            <asp:Button CssClass="btn btn-danger navbar-form  form-control" ID="btnContinue" runat="server" Text="Continue" Height="40px" Width="150px" PostBackUrl="~/Account/UserConfirmation.aspx" /></td>
                        
                    </tr>

                </table>

            </div>

        </div>
    </div>

    <br />
</asp:Content>
