<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Confirmation.aspx.cs" Inherits="BakaFlightBooking.Pages.Confirmation" %>

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
                    <asp:HyperLink CssClass="list-group-item" runat="server" NavigateUrl="~/Account/UserChoosingSeat.aspx">Book A Seat</asp:HyperLink>
                    <asp:HyperLink CssClass="list-group-item " runat="server" NavigateUrl="~/Account/UserPassenger.aspx">Passenger</asp:HyperLink>
                    <asp:HyperLink BackColor="Aquamarine" CssClass="list-group-item" runat="server" NavigateUrl="~/Account/UserConfirmation.aspx">Confirmation</asp:HyperLink>
                </div>
            </div>


            <!-- Đây là phần nội dung của trang -->
            <div class="col-sm-10">
                <h1 class="fancy">Confimation</h1>
                <div class="cangiua">
                    <table style="max-width: 600px; text-align: left" class="auto-style11">
                        <tr class="alightTable">
                            <td class="auto-style8">Your Flight No
                            </td>
                            <td class="auto-style10">
                                <asp:TextBox ID="txtFlightNo" runat="server" CssClass="w3-input" Width="140px" ReadOnly="true"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="alightTable">
                            <td class="auto-style8">Your Seat No
                            </td>
                            <td class="auto-style10">
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="w3-input" Width="140px" ReadOnly="true"></asp:TextBox>
                            </td>
                        </tr>
                    </table>

                    <br />
                       <asp:Button CssClass="btn btn-danger navbar-form  form-control" ID="btnContinue" runat="server" Text="Continue" Height="40px" Width="150px" PostBackUrl="~/Default.aspx" /></td>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
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
            width: 150px;
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
