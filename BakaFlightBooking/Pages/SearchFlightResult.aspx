<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="SearchFlightResult.aspx.cs"   Inherits="BakaFlightBooking.Pages.SearchFlightResult" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="CustomHead" runat="server">
    <style type="text/css">
        .cangiua {
            display: block;
            margin-left: auto;
            margin-right: auto;
            margin: 0 auto;
        }

        .alightTable {
            padding-left: 10px;
            padding-right: 10px;
        }


        .auto-style7 {
            width: 90px;
            height: 45px;
        }

        .active {
            padding: 5px;
            text-align:center;
        }
    </style>
    <link rel="stylesheet" href="Content/textDefault.css" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="cangiua col-sm-13 " style="text-align: center">
        <div class="row">
            <br />
            <br />
             <!-- Đây là cái navigator -->
            <div style="text-align: left" class="col-sm-2">
                <div class="list-group">
                    <asp:HyperLink CssClass="list-group-item" runat="server">Search Flight</asp:HyperLink>
                    <asp:HyperLink BackColor="Aquamarine" CssClass="list-group-item" runat="server">Choose Your Flight</asp:HyperLink>
                    <asp:HyperLink CssClass="list-group-item" runat="server">Book A Seat</asp:HyperLink>
                    <asp:HyperLink CssClass="list-group-item " runat="server">Passenger</asp:HyperLink>
                    <asp:HyperLink CssClass="list-group-item" runat="server" >Payment</asp:HyperLink>
                </div>
            </div>
            <div class="col-sm-10">
                <h1 class="fancy">List of flights</h1>
                <h2>Departure Flight Options</h2>
                <div>
                    <!--Hiện thông tin từ search, txtFlyingFrom sẽ truyền dữ liệu từ drpOrigin_Airport, txtFlyingTo sẽ truyền dữ liệu từ drpDestination_Airport-->
                    <table style="max-width: 500px" class="cangiua ">
                        <tr>
                            <td class="alightTable">Flying From
                            </td>
                            <td>
                                <asp:TextBox ID="txtDepartFlyingFrom" runat="server" CssClass=" form-control" Width="138px" ReadOnly="true"></asp:TextBox>
                            </td>
                            <td class="alightTable">Flying To
                            </td>
                            <td>
                                <asp:TextBox ID="txtDepartFlyingTo" runat="server" CssClass="form-control" Width="144px" ReadOnly="true"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    <br />
                </div>
                Below Fares exclude taxes and fees
                <div style="margin:auto">
                    <asp:GridView ID="DepartGridView" runat="server" CellPadding="4" ForeColor="#333333" ShowHeaderWhenEmpty="True" AllowPaging="True" CssClass="auto-style11" EmptyDataText="Data is empty" HorizontalAlign="Center">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                </div>
                <br />
                Select Flight Id
                <br />
                <asp:DropDownList ID="DepartDropList" DataValue="Flight_No" DataTextField="Flight_No" runat="server"></asp:DropDownList>
                <br />
                <asp:Button ID="BuyDepart" runat="server" Text="Choose" OnClick="BuyDepart_Click" />
                <h2>Return Flight Options</h2>
                <div>

                    <asp:Table Style="max-width: 500px" CssClass="cangiua " runat="server">
                        <asp:TableRow>
                            <asp:TableCell CssClass="alightTable">Flying From
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox ID="txtArrivalFlyingFrom" runat="server" CssClass=" form-control" Width="138px" ReadOnly="true"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell CssClass="alightTable">Flying To
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox ID="txtArrivalFlyingTo" runat="server" CssClass="form-control" Width="144px" ReadOnly="true"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>

                    </asp:Table>
                    <br />
                    Below Fares exclude taxes and fees 
                    <asp:GridView ID="ArrivalGridView" runat="server" CellPadding="4" ForeColor="#333333" ShowHeaderWhenEmpty="True" AllowPaging="True" CssClass="active" EmptyDataText="Data is empty" HorizontalAlign="Center">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                            </Columns>
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        </asp:GridView>
                    <asp:DropDownList ID="ArrivalDropList" DataValue="Flight_No" DataTextField="Flight_No" runat="server"></asp:DropDownList>
                <br />
                <asp:Button ID="BuyArrival" runat="server" Text="Choose" OnClick="BuyArrival_Click" />
                </div>
            </div>
        </div>
    </div>
    
</asp:Content>


