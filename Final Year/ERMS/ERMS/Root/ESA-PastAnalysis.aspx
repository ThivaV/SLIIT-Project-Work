<%@ Page Title="" Language="C#" MasterPageFile="~/ESAMaster.master" AutoEventWireup="true" CodeFile="ESA-PastAnalysis.aspx.cs" Inherits="ESA_PastAnalysis" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <div id="Menu">
                    <div class="Col1">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#009900" 
                            Text="Select Region :"></asp:Label>
                    </div>
                    <div class="Col2">
                        <asp:DropDownList ID="ddlRegion" runat="server" Height="30px" Width="15em">
                            <asp:ListItem>--Select--</asp:ListItem>
                            <asp:ListItem>Colombo</asp:ListItem>
                            <asp:ListItem>Gampaha</asp:ListItem>
                            <asp:ListItem>Kalutara</asp:ListItem>
                            <asp:ListItem>Kandy</asp:ListItem>
                            <asp:ListItem>Matale</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="Col3">
                        <asp:Button ID="btnEnter" runat="server" Height="28px" Text="Enter" 
                            Width="8em" onclick="btnEnter_Click" />
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div id="PastAnalysis">
                    <div class="PastLeft">
                        <asp:Literal ID="LiteralVehicleTrafficByTime" runat="server"></asp:Literal>
                    </div>
                    <div class="PastRight">
                    </div>
                    <div class="clear"></div>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div id="Graph2">
                    <div class="MyContainLeft">
                        <asp:Literal ID="LiteralVehiclePopulation" runat="server"></asp:Literal>
                    </div>
                    <div class="MyContainRight">
                        <table class="style1">
                            <tr>
                                <td>
                                    <div id="Menu">
                                        <div class="Col1">
                                            <asp:Label ID="Label2" runat="server" Text="Select Vehicle :"></asp:Label>
                                        </div>
                                        <div class="Col4">
                                            <asp:DropDownList ID="ddlVehType" runat="server" Height="30px" Width="11em">
                                                <asp:ListItem Selected="True">--Select--</asp:ListItem>
                                                <asp:ListItem>Motor cars</asp:ListItem>
                                                <asp:ListItem>Motor Tricycle</asp:ListItem>
                                                <asp:ListItem>Motor Cycles</asp:ListItem>
                                                <asp:ListItem>Buses</asp:ListItem>
                                                <asp:ListItem>Dual purpose vehicles</asp:ListItem>
                                                <asp:ListItem>Lorries</asp:ListItem>
                                                <asp:ListItem>Land vehicles-Tractors</asp:ListItem>
                                                <asp:ListItem>Land vehicles-Trailers</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                        <div class="Col3">
                                            <asp:Button ID="btnVehType" runat="server" Height="28px" Text="Enter" 
                                                Width="8em" onclick="btnVehType_Click" />
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Literal ID="LiteralVehiclePopulationType" runat="server"></asp:Literal>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="clear"></div>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

