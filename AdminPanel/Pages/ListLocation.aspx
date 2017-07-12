<%@ Page Title="List Location" Language="C#" AutoEventWireup="true" CodeBehind="ListLocation.aspx.cs" Inherits="AdminPanel.Pages.ListLocation" MasterPageFile="~/Site.Master" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="MainContent" >
    <asp:GridView ID="grvLocation" runat="server" AutoGenerateColumns="False" CssClass="table table-border" ItemType="DbLibrary.Models.Location" SelectMethod="grdLocation_GetData">
        <Columns>
            <asp:BoundField DataField="City" HeaderText="City"/>
            <asp:BoundField DataField="State_Province" HeaderText="State/Province" />
            <asp:BoundField DataField="Country" HeaderText="Country"/>
        </Columns>
    </asp:GridView>
    <asp:HyperLink ID="btnAdd" runat="server" NavigateUrl="~/Pages/AddLocation.aspx" CssClass="btn btn-primary" Text="Add location"/>
</asp:Content>


