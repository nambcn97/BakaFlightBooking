<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateRoute.aspx.cs" Inherits="AdminPanel.Pages.UpdateRoute" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="MainContent">
    <br />
    <div class="form-group">
        <asp:Label runat="server" Text="Route_ID" />
        <asp:TextBox runat="server" ID="txtID" CssClass="form-control" Enabled="false" />
    </div>
    <div class="form-group">
        <asp:Label runat="server" Text="Origin_Airport" />
        <asp:DropDownList runat="server" ID="ddlOriginAirport" CssClass="form-control" ItemType="DbLibrary.Models.Airport" SelectMethod="ddlAirport_GetData" AppendDataBoundItems="true" DataValueField="Airport_ID" DataTextField="Airport_Name" />
    </div>
    <div class="form-group">
        <asp:Label runat="server" Text="Destination_Airport" />
        <asp:DropDownList runat="server" ID="ddlDestinationAirport" CssClass="form-control" ItemType="DbLibrary.Models.Airport" SelectMethod="ddlAirport_GetData" AppendDataBoundItems="true" DataValueField="Airport_ID" DataTextField="Airport_Name" />
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


