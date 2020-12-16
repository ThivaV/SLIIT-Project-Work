<%@ Page Title="" Language="C#" MasterPageFile="~/NonGmapMasterPage.master" AutoEventWireup="true" CodeFile="ListenSMSSendReceive.aspx.cs" Inherits="ListenSMSSendReceive" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 95%;
        }
        .style2
        {
        }
        .style3
        {
            width: 128px;
        }
        .style4
        {
            width: 125px;
        }
    .style5
    {
        width: 67%;
    }
    .style6
    {
        width: 70px;
    }
        .style7
        {
            width: 83%;
        }
        .style8
        {
            width: 34%;
        }
        .style9
        {
            width: 59px;
        }
        .style10
        {
            width: 64px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1">
        <tr>
            <td class="style3">
                <asp:Label ID="Label3" runat="server" Text="Compose Messages :"></asp:Label>
            </td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="Label4" runat="server" Text="Recipient :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtRecipient" runat="server" Height="24px" Width="20em"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Message :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtMessage" runat="server" Height="75px" TextMode="MultiLine" 
                    Width="30em"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <table align="left" class="style5">
                    <tr>
                        <td class="style6">
                <asp:Button ID="BtnSend" runat="server" onclick="BtnSend_Click" Text="Send" 
                    Width="10em" BackColor="#0066FF" BorderColor="#66FF33" BorderStyle="Solid" 
                                Font-Bold="True" ForeColor="White" Height="28px" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td colspan="2">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Medium" 
                    Font-Underline="True" ForeColor="#0066FF" Text="Accept Alert And Respond"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td colspan="2">
                <table align="left" class="style8">
                    <tr>
                        <td class="style9">
                            <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Enter ID :"></asp:Label>
                        </td>
                        <td class="style10">
                            <asp:TextBox ID="txtID" runat="server" Height="28px" Width="5em"></asp:TextBox>
                        </td>
                        <td>
                <asp:Button ID="btnSendAutoMsg" runat="server" onclick="Button1_Click" Text="Checked" 
                                BackColor="#0066FF" BorderColor="#66FF33" BorderStyle="Solid" Font-Bold="True" 
                                ForeColor="White" Height="28px" Width="10em" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label2" runat="server" Text="Outgoing Messages :"></asp:Label>
            </td>
            <td colspan="2">
                <asp:Button ID="Btn1Refrsh" runat="server" Text="Refresh" BackColor="#0066FF" 
                    BorderColor="#66FF33" BorderStyle="Solid" Font-Bold="True" ForeColor="White" 
                    Height="28px" Width="10em" onclick="Btn1Refrsh_Click" />
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="3">
                <table align="left" class="style5" style="margin-left: 50px">
                    <tr>
                        <td>
                            <asp:GridView ID="GridOut" runat="server" BackColor="White" BorderColor="White" 
                                BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="2" 
                                GridLines="None" Width="750px">
                                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                                <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#33276A" />
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label1" runat="server" Text="Incoming Messages :"></asp:Label>
            </td>
            <td colspan="2">
                <asp:Button ID="Btn2Refrsh" runat="server" Text="Refresh" BackColor="#0066FF" 
                    BorderColor="#66FF33" BorderStyle="Solid" Font-Bold="True" ForeColor="White" 
                    Height="28px" Width="10em" onclick="Btn2Refrsh_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <table align="left" class="style7" style="margin-left: 50px">
                    <tr>
                        <td>
                            <asp:GridView ID="GridIn" runat="server" BackColor="White" BorderColor="White" 
                                BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" 
                                GridLines="None" Width="750px">
                                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                                <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#33276A" />
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

