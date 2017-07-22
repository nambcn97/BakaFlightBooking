<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateFlight.aspx.cs" Inherits="AdminPanel.Pages.UpdateFlight" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-group">
        <asp:Label runat="server" Text="Flight No" />
        <asp:TextBox runat="server" ID="txtFlightNo" CssClass="form-control" ReadOnly="true"/>
    </div>
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
        <asp:DropDownList runat="server" ID="drpRoute" CssClass="form-control" ItemType="DbLibrary.Models.Route" AppendDataBoundItems="true" DataValueField="Route_ID" DataTextField="Route_ID" />
    </div>
    <div class="form-group">
        <asp:Label runat="server" Text="Airplane ID" />
        <asp:DropDownList runat="server" ID="drpAirplane" CssClass="form-control" ItemType="DbLibrary.Models.Airplane" AppendDataBoundItems="true" DataValueField="Airplane_ID" DataTextField="Airplane_ID" />
    </div>
    <div class="form-group">
        <asp:Button runat="server" ID="btnUpdate" CssClass="btn btn-primary" Text="Save" OnClick="btnUpdate_Click" />
        <asp:HyperLink runat="server" ID="btnBack" CssClass="btn btn-default" Text="Back" NavigateUrl="~/Pages/ListFlight.aspx" />
    </div>
</asp:Content>
