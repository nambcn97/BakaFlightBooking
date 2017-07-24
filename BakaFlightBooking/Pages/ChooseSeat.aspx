<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="ChooseSeat.aspx.cs" Inherits="BakaFlightBooking.Pages.ChooseSeat" %>

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
                    <asp:HyperLink BackColor="Aquamarine" CssClass="list-group-item" runat="server" NavigateUrl="~/Account/UserChoosingSeat.aspx">Book A Seat</asp:HyperLink>
                    <asp:HyperLink CssClass="list-group-item " runat="server" NavigateUrl="~/Account/UserPassenger.aspx">Passenger</asp:HyperLink>
                    <asp:HyperLink CssClass="list-group-item" runat="server" NavigateUrl="~/Account/UserCheckOut.aspx">Payment</asp:HyperLink>
                </div>
            </div>

            <div class="col-sm-10">
                <h1 class="fancy">Choosing your Seat</h1>
                <h2>Departure Flight Seat Options</h2>
                <div class="cangiua">
                    <!--Hiện thông tin từ search, txtFlyingFrom sẽ truyền dữ liệu từ drpOrigin_Airport, txtFlyingTo sẽ truyền dữ liệu từ drpDestination_Airport-->
                    <table style="max-width: 600px; text-align: left" class="auto-style11">
                        <tr class="alightTable">
                            <td colspan="2" style="text-align: right; padding-right: 20px">Your Flight No
                            </td>
                            <td colspan="2">
                                <asp:TextBox ID="txtFlightNo" runat="server" CssClass="w3-input" Width="140px" ReadOnly="true"></asp:TextBox>
                            </td>

                        </tr>
                        <tr>
                            <td class="auto-style8">Flying From
                            </td>
                            <td class="auto-style10">
                                <asp:TextBox ID="txtDepartFlyingFrom" runat="server" CssClass=" form-control" Width="300px" ReadOnly="true"></asp:TextBox>
                            </td>
                            <td class="auto-style8">Flying To
                            </td>
                            <td class="auto-style10">
                                <asp:TextBox ID="txtDepartFlyingTo" runat="server" CssClass="form-control" Width="300px" ReadOnly="true"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>

                            <td class="auto-style8">Departure Time
                            </td>
                            <td class="auto-style10">
                                <asp:TextBox ID="txtDepartTime" runat="server" CssClass=" form-control" Width="138px" ReadOnly="true"></asp:TextBox>
                            </td>
                            <td class="auto-style8">Arrival Time
                            </td>
                            <td class="auto-style10">
                                <asp:TextBox ID="txtArrivalTime" runat="server" CssClass=" form-control" Width="138px" ReadOnly="true"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <%--DropdownList gồm những ghế chưa có chỗ ngồi của máy bay được chọn --%>
                      <div>
                    Please choose the available seat now:
                    <asp:DropDownList runat="server" CssClass="w3-select" Style="width: 200px"></asp:DropDownList>
                </div>
                </div>
                <br />
            </div>
        </div>
    </div>
</asp:Content>
