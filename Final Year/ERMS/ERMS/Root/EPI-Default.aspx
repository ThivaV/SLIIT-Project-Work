<%@ Page Title="" Language="C#" MasterPageFile="~/EPIMaster.master" AutoEventWireup="true" CodeFile="EPI-Default.aspx.cs" Inherits="EPI_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 64%;
        }
        .style3
        {
            width: 218px;
        }
        .style4
        {
            width: 53%;
        }
        .style5
        {
            width: 132px;
        }
        .style7
        {
            width: 43%;
        }
        .style8
        {
            width: 175px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">  
    
    <table class="style1">
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <div style="padding-left: 150px">
                <asp:GridView ID="GridViewAlert" runat="server" CellPadding="4" 
                    ForeColor="#333333" GridLines="None" Width="500px" BorderColor="#000099" 
                    BorderStyle="Solid" BorderWidth="1px">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </div>
        </td>
    </tr>
    <tr>
        <td>
            <div style="padding-left: 180px">
                <table class="style2">
                    <tr>
                        <td class="style3">
                            <asp:Label ID="Label1" runat="server" Text="Enter ID :"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtID" runat="server" Height="28px" style="margin-left: 2px" 
                                Width="15em"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="btnSelect" runat="server" Height="30px" Text="Select" 
                                Width="10em" BackColor="#0066FF" BorderColor="#66FF33" BorderStyle="Solid" 
                                BorderWidth="1px" Font-Bold="True" ForeColor="White" 
                                onclick="btnSelect_Click" />
                        </td>
                    </tr>
                </table>
            </div>
        </td>
    </tr>
    <tr>
        <td>
            <div style="padding-left: 180px">             
               <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="Block Type :"></asp:Label>                                              
            </div>
        </td>
    </tr>
    <tr>
        <td>
             <div style="padding-left: 260px">
                 <asp:TextBox ID="txtBlockType" runat="server" Height="30px" Width="15em" 
                     ReadOnly="True"></asp:TextBox>   
             </div>
        </td>
    </tr>
    <tr>
        <td>
            <div style="padding-left: 180px">
                <table class="style4">
                    <tr>
                        <td class="style5">
                            <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="Descrption :"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </div>  
        </td>
    </tr>
    <tr>
        <td>
            <div style="padding-left: 260px">
                <asp:TextBox ID="txtDes" runat="server" Height="60px" TextMode="MultiLine" 
                    Width="25em" ReadOnly="True"></asp:TextBox>
            </div>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <div style="padding-left: 180px">
                <table align="left" class="style7" style="border: 1px solid #FF0000">
                    <tr>
                        <td class="style8">
                            <asp:Label ID="Label4" runat="server" ForeColor="#00CC00" 
                                Text="Select Volumn :"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlVol" runat="server" Height="30px" Width="15em">
                                <asp:ListItem Selected="True">-- Select --</asp:ListItem>
                                <asp:ListItem>High</asp:ListItem>
                                <asp:ListItem>Medium</asp:ListItem>
                                <asp:ListItem>Low</asp:ListItem>
                            </asp:DropDownList>
                        </td>                       
                    </tr>
                    <tr>
                        <td class="style8">
                            <asp:Label ID="Label5" runat="server" ForeColor="#00CC00" 
                                Text="Notify To :"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlOption" runat="server" Height="30px" Width="15em">
                                <asp:ListItem Selected="True">-- Select --</asp:ListItem>
                                <asp:ListItem>Police and Hospital</asp:ListItem>
                                <asp:ListItem>Police</asp:ListItem>
                                <asp:ListItem>Hospital</asp:ListItem>                                
                            </asp:DropDownList>
                        </td>                        
                    </tr>
                    <tr>
                        <td class="style8">
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="btnNotifi" runat="server" BackColor="#0066FF" 
                                BorderColor="#66FF33" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" 
                                ForeColor="White" Height="28px" Text="Notified" Width="15em" 
                                onclick="btnNotifi_Click" />
                        </td>
                    </tr>
                </table>
            </div>
        </td>
    </tr>
    <tr>
        <td>
             <div style="padding-left: 180px">
                 <asp:Label ID="lblMSg" runat="server" ForeColor="#33CC33"></asp:Label>
             </div>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbllat" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lbllng" runat="server" Visible="False"></asp:Label>
        </td>
    </tr>
</table>

</asp:Content>

