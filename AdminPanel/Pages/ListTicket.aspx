<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListTicket.aspx.cs" Inherits="AdminPanel.Pages.ListTicket" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="grdTickets" runat="server" AutoGenerateColumns="false" ItemType="DbLibrary.Models.Ticket" DataKeyNames="Ticket_ID" CssClass="table table-bordered">
        <Columns>
            <asp:BoundField DataField="Ticket_ID" HeaderText="Ticket ID" />
            <asp:BoundField DataField="Flight_No" HeaderText="Flight No" />
            <asp:BoundField DataField="Seat_No" HeaderText="Seat No" />
            <asp:BoundField DataField="Airplane_ID" HeaderText="Airplane ID" />
            <asp:BoundField DataField="Price" HeaderText="Price" />
            <asp:TemplateField HeaderText="Actions" >
                <ItemTemplate>
                    <asp:LinkButton runat="server" ID="btnUpdate" Text="Update" CommandArgument='<%# Eval("Ticket_ID") %>' OnCommand="btnUpdate_Command" />
                    <asp:LinkButton runat="server" ID="btnDelete" Text="Delete" CommandArgument='<%# Eval("Ticket_ID") %>' OnCommand="btnDelete_Command" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EmptyDataTemplate>
            <asp:Label runat="server" Text="No result." />
        </EmptyDataTemplate>
    </asp:GridView>
    <asp:HyperLink ID="btnAdd" runat="server" NavigateUrl="~/Pages/AddTicket.aspx" CssClass="btn btn-primary" Text="Add ticket"/>
</asp:Content>
