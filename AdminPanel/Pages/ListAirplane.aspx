<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListAirplane.aspx.cs" Inherits="AdminPanel.Pages.ListAirplane" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="grdAirplanes" runat="server" AutoGenerateColumns="false" ItemType="DbLibrary.Models.Airplane" DataKeyNames="Airplane_ID" CssClass="table table-bordered">
        <Columns>
            <asp:BoundField DataField="Airplane_ID" HeaderText="Airplane ID" />
            <asp:BoundField DataField="Producer_ID" HeaderText="Producer ID" />
            <asp:BoundField DataField="Seat_Numbers" HeaderText="Seat Numbers" />
            <asp:TemplateField HeaderText="Actions" >
                <ItemTemplate>
                    <asp:LinkButton runat="server" ID="btnUpdate" Text="Update" CommandArgument='<%# Eval("Airplane_ID") %>' OnCommand="btnUpdate_Command" />
                    <asp:LinkButton runat="server" ID="btnDelete" Text="Delete" CommandArgument='<%# Eval("Airplane_ID") %>' OnCommand="btnDelete_Command" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EmptyDataTemplate>
            <asp:Label runat="server" Text="No result." />
        </EmptyDataTemplate>
    </asp:GridView>
    <asp:HyperLink ID="btnAdd" runat="server" NavigateUrl="~/Pages/AddAirplane.aspx" CssClass="btn btn-primary" Text="Add airplane"/>

</asp:Content>
