<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserSearch.aspx.cs" Inherits="BakaFlightBooking.Account.UserSearch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CustomHead" runat="server">
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
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <div class="cangiua col-sm-13 " style="text-align: center">
        <div class="row">
            <br />
            <br />
             <!-- Đây là cái navigator -->
            <div style="text-align: left" class="col-sm-2">
                <div class="list-group">
                    <asp:HyperLink BackColor="Aquamarine" CssClass="list-group-item" runat="server" NavigateUrl="~/Account/UserSearch.aspx">Search Flight</asp:HyperLink>
                    <asp:HyperLink CssClass="list-group-item" runat="server" NavigateUrl="~/Account/UserFlightBooking.aspx">Choose Your Flight</asp:HyperLink>
                    <asp:HyperLink CssClass="list-group-item " runat="server" NavigateUrl="~/Account/UserPassenger.aspx">Passenger</asp:HyperLink>
                    <asp:HyperLink CssClass="list-group-item" runat="server" NavigateUrl="~/Account/UserChoosingSeat.aspx">Book A Seat</asp:HyperLink>
                    <asp:HyperLink  CssClass="list-group-item" runat="server" NavigateUrl="~/Account/UserCheckOut.aspx">Payment</asp:HyperLink>
                     <asp:HyperLink CssClass="list-group-item" runat="server" NavigateUrl="~/Account/UserConfirmation.aspx">Confirmation</asp:HyperLink>
                </div>
            </div>

                <!--Đây là phần nội dung -->
            <div class="col-sm-10">
                 <asp:Table BorderWidth="0" Style="border: none;" runat="server">
                
               <asp:TableRow>
                   <asp:TableCell CssClass="auto-style8">
           
                    </asp:TableCell>
                   <asp:TableCell CssClass="auto-style9">
                      <asp:RadioButton ID="RadioButton1" runat="server"  GroupName="rdKindOfFlight" Text="One Way" Height="40px" Width="180px" BorderStyle="None" />
                    </asp:TableCell>
                   <asp:TableCell CssClass="auto-style8">

                    </asp:TableCell>
                   <asp:TableCell CssClass="auto-style9">
                       <asp:RadioButton ID="RadioButton2" runat="server"  GroupName="rdKindOfFlight" Text="Round Trip" Height="40px" Width="180px" BorderStyle="None" />
                    </asp:TableCell>  
                   <asp:TableCell CssClass="auto-style8">
            
                    </asp:TableCell>
                   <asp:TableCell CssClass="auto-style9">
                          <asp:RadioButton ID="rdEconomicClass" runat="server"  GroupName="rdClass" Text="Economic Class" Height="40px" Width="180px" BorderStyle="None" />
                    </asp:TableCell>
                   <asp:TableCell CssClass="auto-style8">
                       
                    </asp:TableCell>
                   <asp:TableCell CssClass="auto-style9">
                        <asp:RadioButton ID="rdBusinessClass" runat="server"  GroupName="rdClass" Text=" Business Class" Height="40px" Width="180px"/> 
                    </asp:TableCell>
               </asp:TableRow>
                
                <asp:TableRow>

                    <asp:TableCell CssClass="auto-style10">
                        <asp:Label runat="server" CssClass="control-label">
                    From
                        </asp:Label></asp:TableCell>
                    <asp:TableCell CssClass="auto-style11">
                        <asp:DropDownList CssClass="form-control" ID="drpOrigin_Airport" AutoPostBack="true" runat="server" Height="40px" Width="200px"></asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell CssClass="auto-style10">To
                    </asp:TableCell>
                    <asp:TableCell CssClass="auto-style11">
                        <asp:DropDownList CssClass="form-control" ID="drpDestination_Airport" AutoPostBack="true" runat="server" Height="40px" Width="200px"></asp:DropDownList>
                    </asp:TableCell>

                    <asp:TableCell CssClass="auto-style10">Depart
                    </asp:TableCell>
                    <asp:TableCell CssClass="auto-style11">

                        <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Height="40px" Width="200px"></asp:TextBox>

                    </asp:TableCell>
                    <asp:TableCell CssClass="auto-style10">Arrival
                    </asp:TableCell>
                    <asp:TableCell CssClass="auto-style11">

                        <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" Height="40px" Width="200px"></asp:TextBox>

                    </asp:TableCell>
                    <asp:TableCell CssClass="auto-style12">

                        <asp:Button CssClass="btn btn-danger navbar-form navbar-right form-control" ID="btnSearchFlight" runat="server" Text="Find Flight" Height="40px" Width="150px" PostBackUrl="~/Account/UserFlightBooking.aspx"/>

                    </asp:TableCell>

                </asp:TableRow>


            </asp:Table>

            </div>
        </div>
    </div>
</asp:Content>
