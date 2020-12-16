<%@ Page Title="" Language="C#" MasterPageFile="~/NonGmapMasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<%@ Register src="GoogleMapForASPNet.ascx" tagname="GoogleMapForASPNet" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 773px;
        }
        .style3
        {
            width: 773px;
            height: 462px;
        }
        .style4
        {
            width: 773px;
            height: 69px;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
    <table class="style1" style="margin-top: -15px">
        <tr>
            <td class="style4">
                <asp:Image ID="Image3" runat="server" 
                    ImageUrl="~/ERMSimages/images/TopBanner.png" />
            </td>
            <td rowspan="4">
                <table class="style1" style="margin-bottom: 64px">
                    <tr>
                        <td>
                             <asp:Image ID="Image1" runat="server" ImageAlign="Top" ImageUrl="~/ERMSimages/images/RightSideBanner.png" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <uc1:GoogleMapForASPNet ID="GoogleMapForASPNet1" runat="server" />
            </td>
        </tr>       
        <tr>
            <td class="style2">
                <asp:Image ID="Image2" runat="server" 
                    ImageUrl="~/ERMSimages/images/DownBanner.png" />
            </td>
        </tr>
    </table>
 
</asp:Content>

