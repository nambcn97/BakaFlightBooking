<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserFlightBooking.aspx.cs" Inherits="BakaFlightBooking.Account.Lockout" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="cangiua col-sm-12 " style="text-align: center">

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
        <br />
        <div class="row">
            <div class="col-sm-2">
            </div>
            <div class="col-sm-10">
              
                <asp:Table runat="server">

                    <asp:TableRow>
                        <asp:TableCell Style="text-align: left" CssClass="auto-style7">Date flight
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:DropDownList CssClass="form-control" ID="drpDepartDateFlight" runat="server" Height="40px" Width="300px">
                            </asp:DropDownList>
                        </asp:TableCell>
                    </asp:TableRow>
                   
                    <asp:TableRow>
                        <asp:TableCell Style="text-align: left" CssClass="auto-style7">Sort by
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:DropDownList CssClass="form-control" ID="drpDepartSearchFlights" runat="server" Height="40px" Width="300px">
                                <asp:ListItem Selected="True">All</asp:ListItem>
                                <asp:ListItem>Lowest Price</asp:ListItem>
                                <asp:ListItem>Highest Price</asp:ListItem>
                                <asp:ListItem>Earliest Departure</asp:ListItem>
                                <asp:ListItem>Earlies Arrival</asp:ListItem>
                            </asp:DropDownList>
                        </asp:TableCell>
                    </asp:TableRow>

                </asp:Table>
                <br />
                <br />
              
                <asp:GridView ID="DepartGridView" runat="server" CellPadding="4" ForeColor="#333333" ShowHeaderWhenEmpty="True" AllowPaging="True" CssClass="active" EmptyDataText="Data is empty">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:TemplateField FooterText="FlightID" HeaderText="FlightID">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField FooterText="Operated by" HeaderText="Operated by">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField FooterText="Depart" HeaderText="Depart">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField FooterText="Arrive" HeaderText="Arrive">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField FooterText="Business Class" HeaderText="Business Class">
                            <EditItemTemplate>
                                <asp:CheckBox ID="CheckBox2" runat="server" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:CheckBox ID="CheckBox2" runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField FooterText="Economy Class" HeaderText="Economy Class">
                            <EditItemTemplate>
                                <asp:CheckBox ID="CheckBox1" runat="server" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:CheckBox ID="CheckBox1" runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
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
                <br />
            </div>
        </div>


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



        </div>
        Below Fares exclude taxes and fees 
        <br />
        <div class="row">
            <div class="col-sm-2">
            </div>
            <div class="col-sm-10">
           
                <asp:Table runat="server">
                    <asp:TableRow>
                        <asp:TableCell Style="text-align: left" CssClass="auto-style7">Date flight
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:DropDownList CssClass="form-control" ID="drpArrivalDateFlight" runat="server" Height="40px" Width="300px">
                            </asp:DropDownList>
                        </asp:TableCell>
                    </asp:TableRow>
                  
                    <asp:TableRow>
                        <asp:TableCell Style="text-align: left" CssClass="auto-style7">Sort by
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:DropDownList CssClass="form-control" ID="drpArrivalSearchFlight" runat="server" Height="40px" Width="300px">
                                <asp:ListItem Selected="True">All</asp:ListItem>
                                <asp:ListItem>Lowest Price</asp:ListItem>
                                <asp:ListItem>Highest Price</asp:ListItem>
                                <asp:ListItem>Earliest Departure</asp:ListItem>
                                <asp:ListItem>Earlies Arrival</asp:ListItem>
                            </asp:DropDownList>
                        </asp:TableCell>
                    </asp:TableRow>

                </asp:Table>
                <br />
                <br />
             
                <asp:GridView ID="ArrivalGridView" runat="server" CellPadding="4" ForeColor="#333333" ShowHeaderWhenEmpty="True" AllowPaging="True" CssClass="active" EmptyDataText="Data is empty">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:TemplateField FooterText="FlightID" HeaderText="FlightID">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField FooterText="Operated by" HeaderText="Operated by">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField FooterText="Depart" HeaderText="Depart">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField FooterText="Arrive" HeaderText="Arrive">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label8" runat="server"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField FooterText="Business Class" HeaderText="Business Class">
                            <EditItemTemplate>
                                <asp:CheckBox ID="CheckBox3" runat="server" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:CheckBox ID="CheckBox4" runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField FooterText="Economy Class" HeaderText="Economy Class">
                            <EditItemTemplate>
                                <asp:CheckBox ID="CheckBox5" runat="server" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:CheckBox ID="CheckBox6" runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
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
                <br />
            </div>
        </div>
        <asp:Button CssClass="btn btn-danger navbar-form navbar-right form-control" ID="btnContinue" runat="server" Text="Continue" Height="40px" Width="150px" />

    </div>
            <asp:Button ID="Button1" runat="server" Text="Button" />
</asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="CustomHead">
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
    </style>
</asp:Content>

