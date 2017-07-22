<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateAirplaneSeat.aspx.cs" Inherits="AdminPanel.Pages.UpdateAirplaneSeat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-group">
        <asp:Label runat="server" Text="Airplane ID" />
        <asp:TextBox runat="server" ID="txtAirplaneID" CssClass="form-control" ReadOnly="true" />
    </div>
    <div class="form-group">
        <asp:Label runat="server" Text="Seat No" />
        <asp:TextBox runat="server" ID="txtSeatNo" CssClass="form-control" ReadOnly="true" />
    </div>
    <div class="form-group">
        <asp:Label runat="server" Text="Travel Class ID" />
        <asp:DropDownList runat="server" ID="drpTravelClasses" CssClass="form-control" ItemType="DbLibrary.Models.TravelClass" AppendDataBoundItems="true" DataValueField="Travel_Class_ID" DataTextField="Travel_Class_ID" />
    </div>
    <div class="form-group">
        <asp:Button runat="server" ID="btnSave" CssClass="btn btn-primary" Text="Save" OnClick="btnUpdate_Click" />
        <asp:HyperLink runat="server" ID="btnBack" CssClass="btn btn-default" Text="Back" NavigateUrl="~/Pages/ListAirplaneSeats.aspx" />
    </div>
</asp:Content>
