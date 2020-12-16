<%@ Page Title="" Language="C#" MasterPageFile="~/NonGmapMasterPage.master" AutoEventWireup="true" CodeFile="Copy (2) of ESA-Birth.aspx.cs" Inherits="ESA_Birth" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 90%;
            height: 300px;
        }
        .style2
        {
            width: 73%;
        }
        .style3
        {
            width: 25%;
            height: 160px;
        }
        .style4
        {
            height: 21px;
            width: 952px;
        }
        .style6
        {
            width: 952px;
        }
        .style8
        {
            height: 21px;
            width: 278px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1">
        <tr>
            <td class="style6" colspan="2">
                <asp:Image ID="Image1" runat="server" 
                    ImageUrl="~/ERMSimages/ESAimages/Birth.png" />
            </td>
        </tr>
        <tr>
            <td class="style6" colspan="2">
                <table align="center" class="style2" style="margin-left: 120px">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="Select District :"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlRegion" runat="server" Height="28px" Width="15em">
                                <asp:ListItem Selected="True">--Select--</asp:ListItem>
                                <asp:ListItem>Colombo</asp:ListItem>
                                <asp:ListItem>Gampaha</asp:ListItem>
                                <asp:ListItem>Kalutara</asp:ListItem>
                                <asp:ListItem>Kandy</asp:ListItem>
                                <asp:ListItem>Matale</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Enter Year :"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtYear" runat="server" Height="28px" Width="15em"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="btnEnter" runat="server" BackColor="#0066FF" 
                                BorderColor="#66FF33" BorderStyle="Solid" Font-Bold="True" ForeColor="White" 
                                Height="28px" onclick="btnEnter_Click" Text="Enter" Width="10em" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td colspan="2">
                            <asp:Label ID="lblMsg" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style4" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <asp:Literal ID="BirthGraph" runat="server"></asp:Literal>
            </td>
        </tr>
        <tr>
            <td class="style8">
                <table align="left" class="style3" style="margin-left: 20px">
                    <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblBirth" runat="server" Font-Bold="True" Font-Size="Medium" 
                                ForeColor="#585858" Text="Birth Predictor" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:ListBox ID="LstBirth" runat="server" Height="160px" Visible="False" 
                                Width="250px"></asp:ListBox>
                        </td>
                    </tr>
                </table>
            </td>
            <td class="style4">
                <asp:Literal ID="BirthPieGraph" runat="server"></asp:Literal>
            </td>
        </tr>
        <tr>
            <td class="style4" colspan="2">
            </td>            
        </tr>
    </table>
</asp:Content>

