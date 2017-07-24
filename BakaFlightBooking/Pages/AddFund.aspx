<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="AddFund.aspx.cs" Inherits="BakaFlightBooking.Pages.AddFund" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />

    Card Number
    <asp:TextBox ID="TextBox1" width="388px"  runat="server"></asp:TextBox>
    <asp:Button ID="add" runat="server" Text="Add Fund" OnClick="add_Click" />
    <br />
    <asp:Label ID="lblInfo" runat="server"></asp:Label>
</asp:Content>
