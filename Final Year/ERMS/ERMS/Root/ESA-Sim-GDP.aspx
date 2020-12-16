<%@ Page Title="" Language="C#" MasterPageFile="~/NonGmapMasterPage.master" AutoEventWireup="true" CodeFile="ESA-Sim-GDP.aspx.cs" Inherits="ESA_Sim_GDP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 50%;
        }
        .style2
        {
            height: 78px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1">
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" 
                    ForeColor="Lime" Text="Allocation Fund For Transport Sector"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <div id="Menu">
                    <div class="Col1">
                        <asp:Label ID="Label1" runat="server" Text="Enter Year :"></asp:Label>
                    </div>
                    <div class="Col2">
                        <asp:TextBox ID="txt1" runat="server" Height="30px" Width="15em"></asp:TextBox>
                    </div>
                    <div class="Col3">
                        <asp:Button ID="btn" runat="server" Height="30px" onclick="btn_Click" 
                            Text="Enter" Width="8em" />
                    </div>
                    <div class="clear"></div>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Literal ID="LiteralGraph" runat="server"></asp:Literal>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblMsg" runat="server" ForeColor="#33CC33"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:ListBox ID="ListBox1" runat="server" Height="130px" Visible="False" 
                    Width="373px"></asp:ListBox>
            </td>
        </tr>
    </table>
</asp:Content>

