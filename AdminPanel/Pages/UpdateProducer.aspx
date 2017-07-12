<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateProducer.aspx.cs" Inherits="AdminPanel.Pages.UpdateProducer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-group">
        <asp:Label runat="server" Text="Producer ID" />
        <asp:TextBox runat="server" ID="txtProducerID" CssClass="form-control" ReadOnly="true"/>
    </div>
    <div class="form-group">
        <asp:Label runat="server" Text="Producer Name" />
        <asp:TextBox runat="server" ID="txtProducerName" CssClass="form-control" />
    </div>
    <div class="form-group">
        <asp:Label runat="server" Text="Icon" />
        <asp:TextBox runat="server" ID="txtIcon" CssClass="form-control" />
    </div>
    <div class="form-group">
        <asp:Label runat="server" Text="Description" />
        <asp:TextBox runat="server" ID="txtDescription" CssClass="form-control" />
    </div>
    <div class="form-group">
        <asp:Button runat="server" ID="btnUpdate" CssClass="btn btn-primary" Text="Update" OnClick="btnUpdate_Click" />
        <asp:HyperLink runat="server" ID="btnBack" CssClass="btn btn-default" Text="Back" NavigateUrl="~/Pages/ListProducer.aspx" />
    </div>
</asp:Content>
