<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddLocation.aspx.cs" Inherits="AdminPanel.Pages.AddLocation" MasterPageFile="~/Site.Master"%>
<asp:Content ID="Content1" runat="server" contentplaceholderid="MainContent">
    <div class="fom form-group">
        <asp:Label runat="server" Text="City_ID" />
        <asp:TextBox runat="server" ID="txtCity" CssClass="form-control" placeholder="i.e: DN, HN, HCM, ..."/>
        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtCity" ErrorMessage="City ID is required" Display="Dynamic" CssClass="text-danger"/>
    </div>
    <div class="fom form-group">
        <asp:Label runat="server" Text="State/Province" />
        <asp:TextBox runat="server" ID="txtProvince" CssClass="form-control" placeholder="i.e: Đà Nẵng, Hà Nội, ..."/>
        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtProvince" ErrorMessage="State/Province is required" Display="Dynamic" CssClass="text-danger"/>
    </div>
    <div class="fom form-group">
        <asp:Label runat="server" Text="Country" />
        <asp:TextBox runat="server" ID="txtCountry" CssClass="form-control" placeholder="i.e: VietNam, Singapore ..."/>
        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtCountry" ErrorMessage="Country is required" Display="Dynamic" CssClass="text-danger"/>
    </div>
    <div class="form form-group">
        <asp:Button runat="server" ID="btnSave" CssClass="btn btn-primary" Text="Save" OnClick="btnSave_Click"/>
        <asp:HyperLink runat="server" ID="btnBack" CssClass="btn btn-default" Text="Back" NavigateUrl="~/Pages/ListLocation.aspx"/>
    </div>
</asp:Content>

