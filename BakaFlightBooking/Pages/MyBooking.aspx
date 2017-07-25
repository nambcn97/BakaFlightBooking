<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MyBooking.aspx.cs" Inherits="BakaFlightBooking.Pages.ListBooking" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="MainContent">
    <asp:GridView ID="grvBooking" runat="server" AutoGenerateColumns="False"  CssClass="table table-bordered">
        <Columns>
            <asp:BoundField DataField="Booking_ID" HeaderText="Booking ID" />
            <asp:BoundField DataField="Payment_Amount" HeaderText="Amount" />
            <asp:BoundField DataField="Payment_Date" HeaderText="Date" />
            <asp:BoundField DataField="Username" HeaderText="Username" />
        </Columns>
        <EmptyDataTemplate>
            <asp:Label runat="server" Text="No result." />
        </EmptyDataTemplate>
    </asp:GridView>

</asp:Content>

