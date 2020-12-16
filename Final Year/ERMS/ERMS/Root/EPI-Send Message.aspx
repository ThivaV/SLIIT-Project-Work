<%@ Page Title="" Language="C#" MasterPageFile="~/EPIMaster.master" AutoEventWireup="true" CodeFile="EPI-Send Message.aspx.cs" Inherits="EPI_Send_Message" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 50%;
        }
        .style3
        {
            height: 21px;
        }
        .style4
        {
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style2" style="border: thin solid #FF0000; margin-left: 200px">
        <tr>
            <td class="style3">
            </td>
            <td class="style3">
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label1" runat="server" Text="Recipient :"></asp:Label>
            </td>
            <td class="style3">
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:TextBox ID="txtRece" runat="server" Height="28px" Width="15em"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label2" runat="server" Text="Message :"></asp:Label>
            </td>
            <td class="style3">
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:TextBox ID="txtMsg" runat="server" Height="120px" TextMode="MultiLine" 
                    Width="20em"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
            </td>
            <td class="style4">
                <asp:Button ID="btnSend" runat="server" Height="30px" onclick="btnSend_Click" 
                    Text="Send" Width="10em" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="lblMsg" runat="server" ForeColor="#00CC00"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

