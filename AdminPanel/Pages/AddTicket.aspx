<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddTicket.aspx.cs" Inherits="AdminPanel.Pages.AddTicket" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-group">
        <asp:Label runat="server" Text="Flight No" />
        <asp:DropDownList runat="server" ID="drpFlightNo" CssClass="form-control" ItemType="DbLibrary.Models.Flight" AppendDataBoundItems="true" DataValueField="Flight_No" DataTextField="Flight_No" OnSelectedIndexChanged="drpFlightNo_SelectedIndexChanged" AutoPostBack="True" />
    </div>
    <div class="form-group">
        <asp:Label runat="server" Text="Airplane ID" />
        <asp:TextBox runat="server" ID="txtAirplaneID" CssClass="form-control" Enabled="false"/>
    </div>
    <div class="form-group">
        <asp:Label runat="server" Text="Seat No" />
        <asp:DropDownList runat="server" ID="drpSeatNo" CssClass="form-control" ItemType="DbLibrary.Models.AirplaneSeat" AppendDataBoundItems="true" DataValueField="Seat_No" DataTextField="Seat_No" />
    </div>
    <div class="form-group">
        <asp:Label runat="server" Text="Price" />
        <asp:TextBox runat="server" ID="txtPrice" CssClass="form-control" />
    </div>
    <div class="form-group">
        <asp:Button runat="server" ID="btnSave" CssClass="btn btn-primary" Text="Save" OnClick="btnSave_Click" />
        <asp:HyperLink runat="server" ID="btnBack" CssClass="btn btn-default" Text="Back" NavigateUrl="~/Pages/ListTicket.aspx" />
    </div>
</asp:Content>
