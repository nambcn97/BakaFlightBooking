<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddProducer.aspx.cs" Inherits="AdminPanel.Pages.AddProducer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="form-group">
        <asp:Label runat="server" Text="Producer ID" />
        <asp:TextBox runat="server" ID="txtProducerID" CssClass="form-control" />
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
        <asp:Button runat="server" ID="btnSave" CssClass="btn btn-primary" Text="Save" OnClick="btnSave_Click" />
        <asp:HyperLink runat="server" ID="btnBack" CssClass="btn btn-default" Text="Back" NavigateUrl="~/Pages/ListProducer.aspx" />
    </div>
</asp:Content>
