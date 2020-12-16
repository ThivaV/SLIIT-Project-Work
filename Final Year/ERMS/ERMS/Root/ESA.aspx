<%@ Page Title="" Language="C#" MasterPageFile="~/NonGmapMasterPage.master" AutoEventWireup="true" CodeFile="ESA.aspx.cs" Inherits="ESA" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <script type="text/javascript" src="FusionCharts/FusionCharts.js">
    </script>
    <style type="text/css">
        .style1
        {
            width: 90%;
            height: 179px;
        }
        .style3
        {
        }
        .style4
        {
            width: 98%;
        }
        .style5
        {
            width: 616px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1">
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" colspan="2">
                <table align="center" class="style4">
                    <tr>
                        <td>                            
                            <div id="chartContainer">FusionCharts will load here!</div>          
                            <script type="text/javascript">
	                        <!--

                                var myChart = new FusionCharts("FusionCharts/Column3D.swf",
                                "myChartId", "800", "500", "0", "1");
                                myChart.setXMLUrl("Data-1.xml");
                                myChart.render("chartContainer");
      
                            // -->     
                            </script>  
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style5">
                <table align="left" class="style4">
                    <tr>
                        <td>                            
                            <asp:Literal ID="Graph2" runat="server"></asp:Literal>
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                <asp:Button ID="btnEnter" runat="server" Height="28px" onclick="btnEnter_Click" 
                    Text="Future Predictions" Width="15em" />
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

