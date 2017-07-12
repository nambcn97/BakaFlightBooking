<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListTravelClass.aspx.cs" Inherits="AdminPanel.Pages.ListTravelClass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="grdTravelClasses" runat="server" AutoGenerateColumns="false" ItemType="DbLibrary.Models.TravelClass" DataKeyNames="Travel_Class_ID" CssClass="table table-bordered">
        <Columns>
            <asp:BoundField DataField="Travel_Class_ID" HeaderText="TravelClass ID" />
            <asp:BoundField DataField="Name" HeaderText="Name" />
            <asp:BoundField DataField="Description" HeaderText="Description" />
            <asp:TemplateField HeaderText="Actions" >
                <ItemTemplate>
                    <asp:LinkButton runat="server" ID="btnUpdate" Text="Update" CommandArgument='<%# Eval("Travel_Class_ID") %>' OnCommand="btnUpdate_Command" />
                    <asp:LinkButton runat="server" ID="btnDelete" Text="Delete" CommandArgument='<%# Eval("Travel_Class_ID") %>' OnCommand="btnDelete_Command" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EmptyDataTemplate>
            <asp:Label runat="server" Text="No result." />
        </EmptyDataTemplate>
    </asp:GridView>
    <asp:HyperLink ID="btnAdd" runat="server" NavigateUrl="~/Pages/AddTravelClass.aspx" CssClass="btn btn-primary" Text="Add travel class"/>

</asp:Content>
