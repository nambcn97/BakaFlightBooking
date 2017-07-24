<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FlightBookingWebsite._Default" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="CustomHead" runat="server">
    <style type="text/css">
        .fancy { font-family: fantasy; 
        }
      
        .auto-style2 {
            position: relative;
            min-height: 1px;
            width: 100%;
            left: 1px;
            top: -16px;
            height: 190px;
            padding-left: 15px;
            padding-right: 15px;
        }
        .auto-style5 {
            height: 60px;
            width: 350px;
        }
        .auto-style6 {
            height: 60px;
            width: 140px;
        }
      
    </style>
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
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
    <br/>
    <div class="row">
        <div class="col-sm-12">
            <div id="main-carousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#main-carousel" data-slide-to="0" class="active"></li>
                    <li data-target="#main-carousel" data-slide-to="1"></li>
                    <li data-target="#main-carousel" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img src="Images/plane1.jpg" alt="Bus">
                        <div class="carousel-caption">
                            <h3>Powerful</h3>
                            <p>Provide all the features for managing buses, passengers and bookings</p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="Images/plane2.jpg" alt="Bus">
                        <div class="carousel-caption">
                            <h3>Easy to use</h3>
                            <p>Simple, but elegant user interface inspired from Microsoft's Modern design</p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="Images/plane3.jpg" alt="Bus">
                        <div class="carousel-caption">
                            <h3>Secured</h3>
                            <p>Implement security to restrict anonymous access to the system</p>
                        </div>
                    </div>
                </div>

                <!-- Controls -->
                <a class="left carousel-control" href="#main-carousel" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#main-carousel" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>

        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <br />
            <p>
                <b>Baka Flight Booking</b> is a tool to support users who can book air tickets through Internet in a convenient and fast way.
            This website provide features that help agents manage the data of cities, buses, routes, passengers and 
            bookings. It uses ASP.NET as the web platform, together with several technologies such as Bootstrap, Entity Framework, etc.
            </p>
        </div>
    </div>
</asp:Content>
