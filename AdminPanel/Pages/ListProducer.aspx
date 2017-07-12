<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListProducer.aspx.cs" Inherits="AdminPanel.Pages.ListProducer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="grdProducers" runat="server" AutoGenerateColumns="false" ItemType="DbLibrary.Models.Producer" DataKeyNames="Producer_ID" CssClass="table table-bordered">
        <Columns>
            <asp:BoundField DataField="Producer_ID" HeaderText="Producer ID" />
            <asp:BoundField DataField="Producer_Name" HeaderText="Producer Name" />
            <asp:BoundField DataField="Icon" HeaderText="Icon" />
            <asp:BoundField DataField="Description" HeaderText="Description" />
            <asp:TemplateField HeaderText="Actions" >
                <ItemTemplate>
                    <asp:LinkButton runat="server" ID="btnUpdate" Text="Update" CommandArgument='<%# Eval("Producer_ID") %>' OnCommand="btnUpdate_Command" />
                    <asp:LinkButton runat="server" ID="btnDelete" Text="Delete" CommandArgument='<%# Eval("Producer_ID") %>' OnCommand="btnDelete_Command" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EmptyDataTemplate>
            <asp:Label runat="server" Text="No result." />
        </EmptyDataTemplate>
    </asp:GridView>
    <asp:HyperLink ID="btnAdd" runat="server" NavigateUrl="~/Pages/AddProducer.aspx" CssClass="btn btn-primary" Text="Add producer"/>
</asp:Content>
