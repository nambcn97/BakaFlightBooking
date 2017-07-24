<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateUser.aspx.cs" Inherits="AdminPanel.Pages.UpdateUser" %>


<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContent">
    <div class="form-group">
        <asp:Label runat="server" Text="Username" ID="Label3" />
        <asp:TextBox runat="server" ID="txtUsername" CssClass="form-control" />
        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtUsername" ErrorMessage="Username is required" Display="Dynamic" CssClass="text-danger" ID="RequiredFieldValidator3" />
    </div>
    <div class="form-group">
        <asp:Label runat="server" Text="Password" ID="Label1" />
        <asp:TextBox runat="server" ID="txtPassword" CssClass="form-control" />
        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required" Display="Dynamic" CssClass="text-danger" ID="RequiredFieldValidator1" />
    </div>
    <div class="form-group">
        <asp:Label runat="server" Text="Wallet" ID="Label2" />
        <asp:TextBox runat="server" ID="txtWaller" CssClass="form-control" />
        
    </div>
    <div class="form-group">
        <asp:Button runat="server" ID="btnSave" CssClass="btn btn-primary" Text="Save" OnClick="btnSave_Click" />
        <asp:HyperLink runat="server" ID="btnBack" CssClass="btn btn-default" Text="Back" NavigateUrl="~/Pages/ListPassenger.aspx" />
    </div>
</asp:Content>


