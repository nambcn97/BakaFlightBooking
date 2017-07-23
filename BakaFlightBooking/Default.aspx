<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FlightBookingWebsite._Default" %>

<script runat="server">

</script>

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
    <div class="container">
        <h1 class="fancy">Book your trip</h1>

        <div class="auto-style13" runat="server">
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

                        <asp:Button CssClass="btn btn-danger navbar-form navbar-right form-control" ID="btnSearchFlight" runat="server" Text="Find Flight" Height="40px" Width="150px" OnClick="btnSearchFlight_Click" />

                    </asp:TableCell>

                </asp:TableRow>


            </asp:Table>

        </div>

        <br />



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

                    <div>

                        <!-- Place where put image of banner -->
                        <div class="col-md-12">
                            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                                <ol class="carousel-indicators">
                                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                                </ol>
                                <div class="carousel-inner">
                                    <div class="item active">
                                        <img class="slide-image" src="Images/plane1.jpg" alt="">
                                        <div class="carousel-caption">
                                            <h3>Powerful</h3>
                                            <p>Provide all the features for managing buses, passengers and bookings</p>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <img class="slide-image" src="Images/plane2.jpg" alt="">
                                        <div class="carousel-caption">
                                            <h3>Secured</h3>
                                            <p>Implement security to restrict anonymous access to the system</p>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <img class="slide-image" src="Images/plane3.jpg" alt="">
                                        <div class="carousel-caption">
                                            <h3>Easy to use</h3>
                                            <p>Simple, but elegant user interface inspired from Microsoft's Modern design</p>
                                        </div>
                                    </div>
                                </div>
                                <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev"></a>
                                <a class="right carousel-control" href="#carousel-example-generic" data-slide="next"></a>
                            </div>
                        </div>

                    </div>


                    <!-- Controls -->
                    <a class="left carousel-control" href="#main-carousel" role="button" data-slide="prev">
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#main-carousel" role="button" data-slide="next">
                        <span class="sr-only">Next</span>
                    </a>
                </div>

                <br />
                <br />

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
