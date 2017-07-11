<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListLocation.aspx.cs" Inherits="AdminPanel.Pages.ListLocation" MasterPageFile="~/Site.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" ItemType="DbLibrary.Models.Location" CssClass="table table-border" SelectMethod="grdLocation_GetData">
        <Columns>
            <asp:BoundField DataField="City" HeaderText="City" />
            <asp:BoundField DataField="State_Province" HeaderText="State/Province" />
            <asp:BoundField DataField="Country" HeaderText="Country" />
        </Columns>
        <EmptyDataTemplate>
            <asp:Label ID="Label1" runat="server" Text="No Result"></asp:Label>
            
        </EmptyDataTemplate>
    </asp:GridView>


</asp:Content>
