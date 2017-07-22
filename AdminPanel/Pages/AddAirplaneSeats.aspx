<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddAirplaneSeats.aspx.cs" Inherits="AdminPanel.Pages.AddAirplaneSeats" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-group">
        <asp:Label runat="server" Text="Airplane ID" />
        <asp:DropDownList runat="server" ID="drpAirplanes" CssClass="form-control" ItemType="DbLibrary.Models.Airplane" SelectMethod="GetAirplanes" AppendDataBoundItems="true" DataValueField="Airplane_ID" DataTextField="Airplane_ID" />
    </div>
    <div class="form-group">
        <asp:Label runat="server" Text="Seat No" />
        <asp:TextBox runat="server" ID="txtSeatNo" CssClass="form-control" />
    </div>
    <div class="form-group">
        <asp:Label runat="server" Text="Travel Class ID" />
        <asp:DropDownList runat="server" ID="drpTravelClasses" CssClass="form-control" ItemType="DbLibrary.Models.TravelClass" SelectMethod="GetTravelClasss" AppendDataBoundItems="true" DataValueField="Travel_Class_ID" DataTextField="Travel_Class_ID" />
    </div>
    <div class="form-group">
        <asp:Button runat="server" ID="btnSave" CssClass="btn btn-primary" Text="Save" OnClick="btnSave_Click" />
        <asp:HyperLink runat="server" ID="btnBack" CssClass="btn btn-default" Text="Back" NavigateUrl="~/Pages/ListAirPlane.aspx" />
    </div>
</asp:Content>
