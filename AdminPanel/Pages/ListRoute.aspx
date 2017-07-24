<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListRoute.aspx.cs" Inherits="AdminPanel.Pages.ListRoute1" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="MainContent">
    <asp:GridView ID="grvRoute" runat="server" AutoGenerateColumns="False" CssClass="table table-border" SelectMethod="grdRoute_GetData">
        <Columns>
            <asp:BoundField DataField="Route_ID" HeaderText="Route ID"/>
            <asp:BoundField DataField="Origin_Airport" HeaderText="Origin Airport" />
            <asp:BoundField DataField="Destination_Airport" HeaderText="Destination Airport"/>
            <asp:BoundField DataField="Distance" HeaderText="Distance"/>
            <asp:TemplateField HeaderText="Actions" >
                <ItemTemplate>
                    <asp:LinkButton runat="server" ID="btnUpdate" Text="Update" CommandArgument='<%# Eval("Route_ID") %>' OnCommand="btnUpdate_Command" />
                    <asp:LinkButton runat="server" ID="btnDelete" Text="Delete" CommandArgument='<%# Eval("Route_ID") %>' OnCommand="btnDelete_Command" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EmptyDataTemplate>
            <asp:Label runat="server" Text="No result." />
        </EmptyDataTemplate>
    </asp:GridView>
    <asp:HyperLink ID="btnAdd" runat="server" NavigateUrl="~/Pages/AddRoute.aspx" CssClass="btn btn-primary" Text="Add route"/>
</asp:Content>


