<%@ Page Title="" Language="C#" MasterPageFile="~/ESAMaster.master" AutoEventWireup="true" CodeFile="ESA-Feedback.aspx.cs" Inherits="ESA_Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 50%;
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
                <div id="Background">
                    <table align="center" class="style3" 
                        style="border-style: solid; border-width: thin">
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="Name :"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtName" runat="server" Height="30px" Width="15em"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                
                                <asp:Label ID="Label2" runat="server" Text="Email ID :"></asp:Label>
                                
                            </td>
                            <td>
                                <asp:TextBox ID="txtMail" runat="server" Height="30px" Width="15em"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text="Message :"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtMsg" runat="server" Height="80px" TextMode="MultiLine" 
                                    Width="25em"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:Button ID="btnSend" runat="server" onclick="btnSend_Click" Text="Enter" 
                                    Width="10em" Height="30px" />
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
    </table>

</asp:Content>

