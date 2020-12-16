<%@ Page Title="" Language="C#" MasterPageFile="~/NonGmapMasterPage.master" AutoEventWireup="true" CodeFile="ESA-Population.aspx.cs" Inherits="ESA_Population" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .style1
        {
            width: 98%;
        }
        .style2
        {
            width: 76%;
            height: 61px;
        }
        .style3
        {
            width: 92px;
            height: 27px;
        }
        .style4
        {
            height: 27px;
        }
        .style5
        {
            height: 27px;
        }
        .style8
        {
            width: 92px;
            height: 20px;
        }
        .style9
        {
            width: 202px;
            height: 20px;
        }
        .style10
        {
            height: 20px;
            width: 76px;
        }
        .style11
        {
            height: 20px;
            width: 200px;
        }
        .style12
        {
            height: 20px;
        }
        .style13
        {
            height: 61px;
        }
        .style14
        {
            width: 63%;
        }
        .style15
        {
            width: 221px;
        }
        .style16
        {
            width: 59%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1">
        <tr>
            <td>
                <asp:Image ID="Image1" runat="server" 
                    ImageUrl="~/ERMSimages/ESAimages/Population.png" />
            </td>
        </tr>
        <tr>
            <td class="style13">
                <table align="center" class="style2" style="margin-left: 120px">
                    <tr>
                        <td class="style8">
                            <asp:Label ID="Label1" runat="server" Text="Select Region :" Font-Bold="True"></asp:Label>
                        </td>
                        <td class="style9">
                            <asp:DropDownList ID="ddlRegion" runat="server" Height="28px" Width="15em">
                                <asp:ListItem Selected="True">--Select--</asp:ListItem>
                                <asp:ListItem>Colombo</asp:ListItem>
                                <asp:ListItem>Gampaha</asp:ListItem>
                                <asp:ListItem>Kalutara</asp:ListItem>
                                <asp:ListItem>Kandy</asp:ListItem>
                                <asp:ListItem>Matale</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="style10">
                            <asp:Label ID="Label2" runat="server" Text="Enter Year :" Font-Bold="True"></asp:Label>
                        </td>
                        <td class="style11">
                            <asp:TextBox ID="txtYear" runat="server" Height="28px" Width="15em"></asp:TextBox>
                        </td>
                        <td class="style12">
                            <asp:Button ID="btnEnter" runat="server" Height="28px" Text="Predict" 
                                Width="10em" BackColor="#0066FF" BorderColor="Lime" BorderStyle="Solid" 
                                Font-Bold="True" ForeColor="White" onclick="btnEnter_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td class="style4" colspan="3">
                            <table align="center" class="style16" 
                                style="padding-left: 40px; margin-left: 100px;">
                                <tr>
                                    <td>
                            <asp:Label ID="lblMsg" runat="server" ForeColor="Red" Font-Bold="True" Font-Size="Medium"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td class="style5">
                            <asp:Button ID="btnBack" runat="server" Height="28px" Text="&lt;&lt; Back" 
                                Width="10em" BackColor="#0066FF" BorderColor="Lime" BorderStyle="Solid" 
                                Font-Bold="True" ForeColor="White" onclick="btnBack_Click" />
                            </td>
                    </tr>
                </table>
            </td>
        </tr>        
        <tr>
            <td style="padding-left: 30px">
                <asp:Literal ID="PopulationGraph" runat="server"></asp:Literal>
            </td>
        </tr>
        <tr>
            <td style="padding-left: 30px">
                <table align="left" class="style14" style="margin-left: 120px">
                    <tr>
                        <td class="style15">
                            <asp:Label ID="lblPopulation" runat="server" CssClass="title" Font-Bold="True" 
                                Font-Size="Medium" ForeColor="DimGray" Text="Population Statistics" 
                                Visible="False"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblBirth" runat="server" CssClass="title" Font-Bold="True" 
                                Font-Size="Medium" ForeColor="DimGray" Text="Birth Statistics" Visible="False"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblDeath" runat="server" CssClass="title" Font-Bold="True" 
                                Font-Size="Medium" ForeColor="DimGray" Text="Death Statistics" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style15">
                <asp:ListBox ID="LstBxPopulation" runat="server" Height="160px" Width="220px" 
                                Visible="False">
                </asp:ListBox>
                        </td>
                        <td>
                            <asp:ListBox ID="LstBxBirth" runat="server" Height="160px" Visible="False" 
                                Width="220px"></asp:ListBox>
                        </td>
                        <td>
                            <asp:ListBox ID="LstBxDeath" runat="server" Height="160px" Visible="False" 
                                Width="220px"></asp:ListBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style15">
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="btnBirth" runat="server" BackColor="#0066FF" BorderColor="Lime" 
                                BorderStyle="Solid" Font-Bold="True" ForeColor="White" Height="28px" 
                                Text="Birth Graphs" Visible="False" Width="10em" OnClientClick="newPopup" 
                                onclick="btnBirth_Click"/>
                        </td>
                        <td>
                            <asp:Button ID="btnDeath" runat="server" BackColor="#0066FF" BorderColor="Lime" 
                                BorderStyle="Solid" Font-Bold="True" ForeColor="White" Height="28px" 
                                Text="Death Graphs" Visible="False" Width="10em" 
                                onclick="btnDeath_Click" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

