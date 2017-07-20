<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddRoute.aspx.cs" Inherits="AdminPanel.Pages.ListRoute" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="MainContent">
    <br />
    <div class="form-group">
        <asp:Label runat="server" Text="Route_ID" />
        <asp:TextBox runat="server" ID="txtID" CssClass="form-control" />
        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtID" ErrorMessage="Route ID is required" Display="Dynamic" CssClass="text-danger" />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtID" CssClass="text-danger" Display="Dynamic" ErrorMessage="Route ID must be an integer" ValidationExpression="[0-9]+"></asp:RegularExpressionValidator>
        
    </div>
    <div class="form-group">
        <asp:Label runat="server" Text="Origin_Airport" />
        <asp:DropDownList runat="server" ID="ddlOriginAirport" CssClass="form-control" ItemType="DbLibrary.Models.Airport" SelectMethod="ddlAirport_GetData" AppendDataBoundItems="true" DataValueField="Airport_ID" DataTextField="Airport_Name" />
    </div>
    <div class="form-group">
        <asp:Label runat="server" Text="Destination_Airport" />
        <asp:DropDownList runat="server" ID="ddlDestinationAirport" CssClass="form-control" ItemType="DbLibrary.Models.Airport" SelectMethod="ddlAirport_GetData" AppendDataBoundItems="true" DataValueField="Airport_ID" DataTextField="Airport_Name" />
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Destination Airport and Origin Airport must not be the same" ControlToCompare="ddlOriginAirport" ControlToValidate="ddlDestinationAirport" CssClass="text-danger" Display="Dynamic" Operator="NotEqual"></asp:CompareValidator>
    </div>
    <div class="form-group">
        <asp:Label runat="server" Text="Distance" />
        <asp:TextBox runat="server" ID="txtDistance" CssClass="form-control" />

    </div>
    <div class="form-group">
        <asp:Button runat="server" ID="btnSave" CssClass="btn btn-primary" Text="Save" OnClick="btnSave_Click" />
        <asp:HyperLink runat="server" ID="btnBack" CssClass="btn btn-default" Text="Back" NavigateUrl="~/Pages/ListRoute.aspx" />
    </div>
</asp:Content>


