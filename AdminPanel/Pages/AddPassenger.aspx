<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddPassenger.aspx.cs" Inherits="AdminPanel.Pages.AddPassenger" MasterPageFile="~/Site.Master" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContent">
    <div class="form-group">
        <asp:Label runat="server" Text="Full Name" ID="Label3" />
        <asp:TextBox runat="server" ID="txtName" CssClass="form-control" />
        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtName" ErrorMessage="Airport Name is required" Display="Dynamic" CssClass="text-danger" ID="RequiredFieldValidator3" />
    </div>
    <div class="form-group">
        <asp:Label runat="server" Text="Age" ID="Label2" />
        <asp:TextBox runat="server" ID="txtAge" CssClass="form-control" />
        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtAge" ErrorMessage="Age is required" Display="Dynamic" CssClass="text-danger" ID="RequiredFieldValidator2" />
    </div>
    <div class="form-group">
        <asp:Label runat="server" Text="Gender" ID="Label1" />
        <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-control">
            <asp:ListItem Selected="True" Value="true">Male</asp:ListItem>
            <asp:ListItem Value="false">Female</asp:ListItem>
        </asp:DropDownList>
    </div>
    <div class="form-group">
        <asp:Label runat="server" Text="Tel" ID="Label4" />
        <asp:TextBox runat="server" ID="txtTel" CssClass="form-control" />
        
    </div>
    <div class="form-group">
        <asp:Label runat="server" Text="Email" ID="Label5" />
        <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" />
        
    </div>
    <div class="form-group">
        <asp:Label runat="server" Text="Street" ID="Label6" />
        <asp:TextBox runat="server" ID="txtStreet" CssClass="form-control" />

    </div>
    <div class="form-group">
        <asp:Label runat="server" Text="City" ID="Label7" />
        <asp:TextBox runat="server" ID="txtCity" CssClass="form-control" />

    </div>
    <div class="form-group">
        <asp:Button runat="server" ID="btnSave" CssClass="btn btn-primary" Text="Save" OnClick="btnSave_Click" />
        <asp:HyperLink runat="server" ID="btnBack" CssClass="btn btn-default" Text="Back" NavigateUrl="~/Pages/ListPassenger.aspx" />
    </div>
</asp:Content>


