<%@ Page Title="" Language="C#" MasterPageFile="~/EPIMaster.master" AutoEventWireup="true" CodeFile="EPI-SeeMap.aspx.cs" Inherits="EPI_SeeMap" %>

<%@ Register src="GoogleMapForASPNet.ascx" tagname="GoogleMapForASPNet" tagprefix="uc1" %>

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
            <uc1:GoogleMapForASPNet ID="GoogleMapForASPNet1" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

