<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddAirport.aspx.cs" Inherits="AdminPanel.Pages.AddAirport" MasterPageFile="~/Site.Master" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContent">
    <br />
    <div class="fom form-group">
        <asp:Label runat="server" Text="Airport_ID" />
        <asp:TextBox runat="server" ID="txtID" CssClass="form-control" />
        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtID" ErrorMessage="Airport ID is required" Display="Dynamic" CssClass="text-danger" />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtID" CssClass="text-danger" Display="Dynamic" ErrorMessage="Airport ID must be an integer" ValidationExpression="[0-9]+"></asp:RegularExpressionValidator>
        <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="This ID has been exist in database" OnServerValidate="checkExist" ControlToValidate="txtID" CssClass="text-danger" Display="Dynamic"></asp:CustomValidator>
    </div>
    <div class="fom form-group">
        <asp:Label runat="server" Text="Airport_Name" />
        <asp:TextBox runat="server" ID="txtName" CssClass="form-control" />
        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtName" ErrorMessage="Airport Name is required" Display="Dynamic" CssClass="text-danger" />
    </div>
    <div class="form-group">
        <asp:Label runat="server" Text="Location_City" />
        <asp:DropDownList runat="server" ID="ddlLocation" CssClass="form-control" ItemType="DbLibrary.Models.Location" SelectMethod="ddlLocation_GetData" AppendDataBoundItems="true" DataValueField="City" DataTextField="City" />
    </div>
    <div class="form-group">
        <asp:Button runat="server" ID="btnSave" CssClass="btn btn-primary" Text="Save" OnClick="btnSave_Click" />
        <asp:HyperLink runat="server" ID="btnBack" CssClass="btn btn-default" Text="Back" NavigateUrl="~/Pages/ListAirport.aspx" />
    </div>
</asp:Content>


