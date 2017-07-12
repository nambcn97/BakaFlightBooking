<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddTravelClass.aspx.cs" Inherits="AdminPanel.Pages.AddTravelClass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-group">
        <asp:Label runat="server" Text="TravelClass ID" />
        <asp:TextBox runat="server" ID="txtTravelClassID" CssClass="form-control" />
    </div>
    <div class="form-group">
        <asp:Label runat="server" Text="Name" />
        <asp:TextBox runat="server" ID="txtName" CssClass="form-control" />
    </div>
    <div class="form-group">
        <asp:Label runat="server" Text="Description" />
        <asp:TextBox runat="server" ID="txtDescription" CssClass="form-control" />
    </div>
    <div class="form-group">
        <asp:Button runat="server" ID="btnSave" CssClass="btn btn-primary" Text="Save" OnClick="btnSave_Click" />
        <asp:HyperLink runat="server" ID="btnBack" CssClass="btn btn-default" Text="Back" NavigateUrl="~/Pages/ListTravelClass.aspx" />
    </div>
</asp:Content>
