<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListAirport.aspx.cs" Inherits="AdminPanel.Pages.ListAirport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="grvAirports" runat="server" AutoGenerateColumns="False" ItemType="DbLibrary.Models.Airport" DataKeyNames="Airport_ID" CssClass="table table-bordered">
        <Columns>
            <asp:BoundField DataField="Airport_ID" HeaderText="Airport ID" />
            <asp:BoundField DataField="Airport_Name" HeaderText="Airport Name" />
            <asp:BoundField DataField="Location_City" HeaderText="Location City" />
            <asp:TemplateField HeaderText="Actions" >
                <ItemTemplate>
                    <asp:LinkButton runat="server" ID="btnUpdate" Text="Update" CommandArgument='<%# Eval("Airport_ID") %>' OnCommand="btnUpdate_Command" />
                    <asp:LinkButton runat="server" ID="btnDelete" Text="Delete" CommandArgument='<%# Eval("Airport_ID") %>' OnCommand="btnDelete_Command" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EmptyDataTemplate>
            <asp:Label runat="server" Text="No result." />
        </EmptyDataTemplate>
    </asp:GridView>
    <asp:HyperLink ID="btnAdd" runat="server" NavigateUrl="~/Pages/AddAirport.aspx" CssClass="btn btn-primary" Text="Add Airport"/>
</asp:Content>
