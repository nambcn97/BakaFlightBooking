<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListPassenger.aspx.cs" Inherits="AdminPanel.Pages.ListPassenger" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="grvPassenger" runat="server" AutoGenerateColumns="False" ItemType="DbLibrary.Models.Passenger" DataKeyNames="PassengerID" CssClass="table table-bordered">
        <Columns>
            <asp:BoundField DataField="PassengerID" HeaderText="Passenger Id" />
            <asp:BoundField DataField="FullName" HeaderText="Full name" />
            <asp:BoundField DataField="Age" HeaderText="Age" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" />
            <asp:BoundField DataField="Tel" HeaderText="Tel" />
            <asp:BoundField DataField="Email" HeaderText="Email" />
            <asp:BoundField DataField="Street" HeaderText="Street" />
            <asp:BoundField DataField="Location_City" HeaderText="City" />
            <asp:TemplateField HeaderText="Actions" >
                <ItemTemplate>
                    <asp:LinkButton runat="server" ID="btnUpdate" Text="Update" CommandArgument='<%# Eval("PassengerID") %>' OnCommand="btnUpdate_Command" />
                    <asp:LinkButton runat="server" ID="btnDelete" Text="Delete" CommandArgument='<%# Eval("PassengerID") %>' OnCommand="btnDelete_Command" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EmptyDataTemplate>
            <asp:Label runat="server" Text="No result." />
        </EmptyDataTemplate>
    </asp:GridView>
    <asp:HyperLink ID="btnAdd" runat="server" NavigateUrl="~/Pages/AddPassenger.aspx" CssClass="btn btn-primary" Text="Add passenger"/>

</asp:Content>
