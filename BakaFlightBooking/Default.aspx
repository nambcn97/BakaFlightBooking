<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FlightBookingWebsite._Default" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="CustomHead" runat="server">
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
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
