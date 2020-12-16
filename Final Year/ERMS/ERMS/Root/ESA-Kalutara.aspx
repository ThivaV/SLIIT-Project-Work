<%@ Page Title="" Language="C#" MasterPageFile="~/ESAMaster.master" AutoEventWireup="true" CodeFile="ESA-Kalutara.aspx.cs" Inherits="ESA_Kalutara" %>

<%@ Register assembly="FlashControl" namespace="Bewise.Web.UI.WebControls" tagprefix="Bewise" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 401px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style3">        
                <Bewise:FlashControl ID="FlashControl1" runat="server" Height="689px" 
                    MovieUrl="~/ERMSimages/ESAimages/Map/FlashMap.swf" Width="400px" />
            </td>
            <td>
                <table>
                    <tr><td><div class="Mine">
                        <asp:Literal ID="LiteralPop" runat="server"></asp:Literal>
                        </div></td></tr>
                    <tr><td><div class="Mine">
                        <asp:Literal ID="LiteralBirth" runat="server"></asp:Literal>
                        </div></td></tr>
                    <tr><td><div class="Mine">
                        <asp:Literal ID="LiteralDeath" runat="server"></asp:Literal>
                        </div></td></tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

