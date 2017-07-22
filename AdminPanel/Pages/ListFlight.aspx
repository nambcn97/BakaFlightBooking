<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListFlight.aspx.cs" Inherits="AdminPanel.Pages.ListFlight" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="grdFlights" runat="server" AutoGenerateColumns="false" ItemType="DbLibrary.Models.Flight" DataKeyNames="Flight_No" CssClass="table table-bordered">
        <Columns>
            <asp:BoundField DataField="Flight_No" HeaderText="Flight No" />
            <asp:BoundField DataField="Departure_DateTime" HeaderText="Departure DateTime" />
            <asp:BoundField DataField="Arrival_DateTime" HeaderText="Arrival DateTime" />
            <asp:BoundField DataField="Route_ID" HeaderText="Route ID" />
            <asp:BoundField DataField="Airplane_ID" HeaderText="Airplane ID" />
            <asp:TemplateField HeaderText="Actions" >
                <ItemTemplate>
                    <asp:LinkButton runat="server" ID="btnUpdate" Text="Update" CommandArgument='<%# Eval("Flight_No") %>' OnCommand="btnUpdate_Command" />
                    <asp:LinkButton runat="server" ID="btnDelete" Text="Delete" CommandArgument='<%# Eval("Flight_No") %>' OnCommand="btnDelete_Command" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EmptyDataTemplate>
            <asp:Label runat="server" Text="No result." />
        </EmptyDataTemplate>
    </asp:GridView>
    <asp:HyperLink ID="btnAdd" runat="server" NavigateUrl="~/Pages/AddFlight.aspx" CssClass="btn btn-primary" Text="Add flight"/>

</asp:Content>
