<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateAirplane.aspx.cs" Inherits="AdminPanel.Pages.UpdateAirplane" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-group">
        <asp:Label runat="server" Text="Airplane ID" />
        <asp:TextBox runat="server" ID="txtAirplaneID" CssClass="form-control" ReadOnly="true" />
    </div>
    <div class="form-group">
        <asp:Label runat="server" Text="Producer ID" />
        <asp:DropDownList runat="server" ID="drpProducer" CssClass="form-control" ItemType="DbLibrary.Models.Producer" AppendDataBoundItems="true" DataValueField="Producer_ID" DataTextField="Producer_ID" />
    </div>
    <div class="form-group">
        <asp:Label runat="server" Text="Seat Numbers" />
        <asp:TextBox runat="server" ID="txtSeatNumbers" CssClass="form-control" />
    </div>
    <div class="form-group">
        <asp:Button runat="server" ID="btnUpdate" CssClass="btn btn-primary" Text="Save" OnClick="btnUpdate_Click" />
        <asp:HyperLink runat="server" ID="btnBack" CssClass="btn btn-default" Text="Back" NavigateUrl="~/Pages/ListAirPlane.aspx" />
    </div>
</asp:Content>
