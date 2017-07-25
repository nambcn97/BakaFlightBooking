<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListAirplaneSeats.aspx.cs" Inherits="AdminPanel.Pages.ListAirplaneSeats" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="grdAirplaneSeats" runat="server" AutoGenerateColumns="false" DataKeyNames="Airplane_ID,Seat_No" CssClass="table table-bordered">
        <Columns>
            <asp:BoundField DataField="Airplane_ID" HeaderText="Airplane ID" />
            <asp:BoundField DataField="Seat_No" HeaderText="Seat No" />
            <asp:BoundField DataField="Name" HeaderText="Travel Class ID" />
            <asp:TemplateField HeaderText="Actions" >
                <ItemTemplate>
                    <asp:LinkButton runat="server" ID="btnUpdate" Text="Update" CommandArgument='<%# Eval("Airplane_ID") + "," + Eval("Seat_No") %>' OnCommand="btnUpdate_Command" />
                    <asp:LinkButton runat="server" ID="btnDelete" Text="Delete" CommandArgument='<%# Eval("Airplane_ID") + "," + Eval("Seat_No") %>' OnCommand="btnDelete_Command" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EmptyDataTemplate>
            <asp:Label runat="server" Text="No result." />
        </EmptyDataTemplate>
    </asp:GridView>
    <asp:HyperLink ID="btnAdd" runat="server" NavigateUrl="~/Pages/AddAirplaneSeats.aspx" CssClass="btn btn-primary" Text="Add airplane seat"/>

</asp:Content>
