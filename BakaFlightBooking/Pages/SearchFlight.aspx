<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="SearchFlight.aspx.cs" Inherits="BakaFlightBooking.Pages.SearchFlight" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="CustomHead" runat="server">
    <style type="text/css">
        .auto-style8 {
            height: 40px;
            width: 120px;
            text-align: right;
            padding-right: 15px;
        }
        .auto-style9 {
            height: 40px;
            width: 180px;
        }
        .auto-style10 {
            height: 40px;
            width: 80px;
            text-align: right;
            padding-right: 15px;
        }
        .auto-style11 {
            height: 40px;
            width: 180px;
        }
        .auto-style12 {
            height: 40px;
            padding-left: 80px;
        }
        .auto-style13 {
            left: 1px;
            top: -16px;
            height: 102px;
        }
    </style>
    <link rel="stylesheet" href="Content/textDefault.css" type="text/css" />
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="cangiua col-sm-13 " style="text-align: center">
        <div class="row">
            <br />
            <br />
            <div style="text-align: left" class="col-sm-2">
                <div class="list-group">
                    <asp:HyperLink BackColor="Aquamarine" CssClass="list-group-item" runat="server" NavigateUrl="~/Account/UserSearch.aspx">Search Flight</asp:HyperLink>
                    <asp:HyperLink CssClass="list-group-item" runat="server" NavigateUrl="~/Account/UserFlightBooking.aspx">Choose Your Flight</asp:HyperLink>
                    <asp:HyperLink CssClass="list-group-item " runat="server" NavigateUrl="~/Account/UserPassenger.aspx">Passenger</asp:HyperLink>
                    <asp:HyperLink CssClass="list-group-item" runat="server" NavigateUrl="~/Account/UserChoosingSeat.aspx">Book A Seat</asp:HyperLink>
                    <asp:HyperLink CssClass="list-group-item" runat="server" NavigateUrl="~/Account/UserCheckOut.aspx">Payment</asp:HyperLink>
                </div>
            </div>
            <br />
            <h1 class="fancy">ONLINE BOOKING</h1>
            <br />
            <div class="auto-style2">
                <table  border="0" style="border:none;">
                    <tr>
                        <td class="auto-style6">
                            <asp:Label runat="server" CssClass="control-label">
                            From
                            </asp:Label></td>
                        <td class="auto-style5">
                            <asp:DropDownList class="form-control" ID="drpOrigin" DataValueField="Id" DataTextField="Descreption" runat="server" Height="40px" Width="220px"></asp:DropDownList>
                        </td>
                        <td class="auto-style6">To
                        </td>
                        <td class="auto-style5">
                            <asp:DropDownList class="form-control" ID="drpDestination" DataValueField="Id" DataTextField="Descreption" runat="server" Height="40px" Width="220px"></asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            <br />
                            Depart
                        </td>
                        <td class="auto-style5">
                  
                            <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Please enter valid date" OnServerValidate="CustomValidator1_ServerValidate" BorderColor="Red" ForeColor="Red"></asp:CustomValidator>
                    
                            <asp:TextBox ID="txtDepart" class="form-control" type="date" runat="server" Height="40px" Width="220px"></asp:TextBox>
                  
                        </td>
                        <td class="auto-style6">
                            <br />
                            Arrival
                        </td>
                        <td class="auto-style5">
                     
                            <asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="Please enter valid date" ForeColor="Red" OnServerValidate="CustomValidator2_ServerValidate"></asp:CustomValidator>
                     
                            <asp:TextBox ID="txtArrival" class="form-control" type="date" runat="server" Height="40px" Width="220px"></asp:TextBox>
                     
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            Class Travel:
                        </td>
                        <td class="auto-style5">

                            <asp:DropDownList class="form-control" ID="DropDownList1" runat="server" Height="40px" Width="220px">
                                <asp:ListItem>Bussiness Class</asp:ListItem>
                                <asp:ListItem>Economy Class</asp:ListItem>
                            </asp:DropDownList>

                        </td>
                        <td class="auto-style6">

                            &nbsp;</td>
                        <td class="auto-style5">

                            <asp:Button class="btn btn-danger navbar-form navbar-right form-control" ID="btnFind" runat="server" Text="Find Flight" Height="40px" Width="150px" OnClick="btnFind_Click"/>

                        </td>
                    </tr>
                    </table>
            </div>
            </div>
       </div>
</asp:Content>
