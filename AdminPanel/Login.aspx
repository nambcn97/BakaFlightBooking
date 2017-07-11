<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BakaFlightBooking.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-group">
        <asp:Label ID="lblUserName" runat="server" Text="Username" />
        <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control" placeholder="Username" MaxLength="30"/>
        <asp:RequiredFieldValidator ID="vldRequiredUserName" runat="server" ControlToValidate="txtUserName" ErrorMessage="Username is required" Display="Dynamic" CssClass="text-danger" />
        <asp:RegularExpressionValidator ID="vldRegexUserName" runat="server" ControlToValidate="txtUserName" ValidationExpression="^\w+$" ErrorMessage="Username must contains letters, digits and underscore only" Display="Dynamic" CssClass="text-danger" />
    </div>
    <div class="form-group">
        <asp:Label ID="lblPassword" runat="server" Text="Password"/>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Password" MaxLength="30"/>
        <asp:RequiredFieldValidator ID="vldRequiredPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required" Display="Dynamic" CssClass="text-danger" />
    </div>
    <div class="form-group">
        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="LogIn" CssClass="btn btn-primary" />
    </div>
    <div class="form-group">
        <asp:Label ID="lblError" runat="server" CssClass="text-danger" />
    </div>
</asp:Content>
