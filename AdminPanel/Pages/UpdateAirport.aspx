<%@ Page Title="Update Airport" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateAirport.aspx.cs" Inherits="AdminPanel.Pages.UpdateAirport" %>


<asp:Content ID="Content1" runat="server" contentplaceholderid="MainContent">
    <br />
    <div class="form-group">
        <asp:Label runat="server" Text="Airport_ID" />
        <asp:TextBox runat="server" ID="txtID" CssClass="form-control" Enabled="false" />
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



