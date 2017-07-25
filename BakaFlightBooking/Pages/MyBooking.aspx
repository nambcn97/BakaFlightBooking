<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MyBooking.aspx.cs" Inherits="BakaFlightBooking.Pages.ListBooking" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="MainContent">
    <asp:GridView ID="grvBooking" runat="server" AutoGenerateColumns="False" ItemType="DbLibrary.Models.Booking" DataKeyNames="Booking_ID" CssClass="table table-bordered">
        <Columns>
            <asp:BoundField DataField="Booking_ID" HeaderText="Booking ID" />
            <asp:BoundField DataField="Ticket_ID" HeaderText="Ticket ID" />
            <asp:BoundField DataField="Passenger_ID" HeaderText="Passenger ID" />
            <asp:BoundField DataField="Booking_Date" HeaderText="Booking Date" />
        </Columns>
        <EmptyDataTemplate>
            <asp:Label runat="server" Text="No result." />
        </EmptyDataTemplate>
    </asp:GridView>

</asp:Content>

