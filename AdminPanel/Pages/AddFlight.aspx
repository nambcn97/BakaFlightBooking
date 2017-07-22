<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddFlight.aspx.cs" Inherits="AdminPanel.Pages.AddFlight" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-group">
        <asp:Label runat="server" Text="Departure DateTime" />
        <asp:TextBox runat="server" ID="txtDeparture_DateTime" CssClass="form-control" />
    </div>
    <div class="form-group">
        <asp:Label runat="server" Text="Arrival DateTime" />
        <asp:TextBox runat="server" ID="txtArrival_DateTime" CssClass="form-control" />
    </div>
    <div class="form-group">
        <asp:Label runat="server" Text="Route ID" />
        <asp:DropDownList runat="server" ID="drpRoute" CssClass="form-control" ItemType="DbLibrary.Models.Route" SelectMethod="GetRoutes" AppendDataBoundItems="true" DataValueField="Route_ID" DataTextField="Route_ID" />
    </div>
    <div class="form-group">
        <asp:Label runat="server" Text="Airplane ID" />
        <asp:DropDownList runat="server" ID="drpAirplane" CssClass="form-control" ItemType="DbLibrary.Models.Airplane" SelectMethod="GetAirplanes" AppendDataBoundItems="true" DataValueField="Airplane_ID" DataTextField="Airplane_ID" />
    </div>
    <div class="form-group">
        <asp:Button runat="server" ID="btnSave" CssClass="btn btn-primary" Text="Save" OnClick="btnSave_Click" />
        <asp:HyperLink runat="server" ID="btnBack" CssClass="btn btn-default" Text="Back" NavigateUrl="~/Pages/ListFlight.aspx" />
    </div>
</asp:Content>
