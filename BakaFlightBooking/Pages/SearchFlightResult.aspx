<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="SearchFlightResult.aspx.cs"   Inherits="BakaFlightBooking.Pages.SearchFlightResult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="noResultlbl" runat="server" Text=""></asp:Label>
    <asp:GridView ID="grdFlights" runat="server" AutoGenerateColumns="false" ItemType="DbLibrary.Models.Flight" DataKeyNames="Flight_No" CssClass="table table-bordered">
        <Columns>
            <asp:BoundField DataField="Flight_No" HeaderText="Flight No" />
            <asp:BoundField DataField="Departure_DateTime" HeaderText="Departure DateTime" />
            <asp:BoundField DataField="Arrival_DateTime" HeaderText="Arrival DateTime" />
            <asp:BoundField DataField="Route_ID" HeaderText="Route ID" />
            <asp:BoundField DataField="Airplane_ID" HeaderText="Airplane ID" />
        </Columns>
        <EmptyDataTemplate>
            <asp:Label runat="server" Text="No result." />
        </EmptyDataTemplate>
    </asp:GridView>
    <asp:HyperLink ID="btnAdd" runat="server" NavigateUrl="~/Pages/AddFlight.aspx" CssClass="btn btn-primary" Text="Add flight"/>

</asp:Content>


