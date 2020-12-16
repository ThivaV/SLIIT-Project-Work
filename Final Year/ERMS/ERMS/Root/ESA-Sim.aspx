<%@ Page Title="" Language="C#" MasterPageFile="~/ESAMaster.master" AutoEventWireup="true" CodeFile="ESA-Sim.aspx.cs" Inherits="ESA_Sim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
        }
        .style6
        {
            width: 50%;
        }
        .style7
        {
            height: 0px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="style1">
        <tr>
            <td colspan="2">
                <asp:Image ID="Image1" runat="server" 
                    ImageUrl="~/ERMSimages/ESAimages/ESA_Board.png" Width="830px" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                <table class="style1">
                    <tr>
                        <td>
                            <table align="center" class="style6">
                                <tr>
                                    <td>
                                        <asp:Label ID="Label1" runat="server" Text="  Enter Year :"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt1" runat="server" Height="26px" Width="15em" style="margin-left: 0px"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Button ID="btn1" runat="server" Height="30px" Text="Simulate" Width="8em" onclick="btn1_Click" />
                                    </td>
                                    <td>
                                        <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Image ID="Image3" runat="server" 
                    ImageUrl="~/ERMSimages/ESAimages/ESA_Board_Bottom.png" Width="830px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Image ID="Image2" runat="server" 
                    ImageUrl="~/ERMSimages/ESAimages/ESA_Board_2.png" Width="830px" />
            </td>
        </tr>
        <tr>          
            <td colspan="2">                
                <div class="MyContainTop">                     
                        <asp:Literal ID="TrafficGraph" runat="server">                          
                             
                        </asp:Literal>
                 </div>  
                <div class="clear"></div>             
            </td>                      
        </tr>
        <tr>            
            <td colspan="2" class="style7">
                <div id="Graph1">
                    <div class="MyContainLeft">
                        <asp:Literal ID="PopulationGraph" runat="server"></asp:Literal>
                        <asp:Button ID="btnPopulation" runat="server" Text="Predict Population" 
                            BackColor="#0033CC" BorderColor="Lime" BorderStyle="Solid" BorderWidth="1px" 
                            Font-Bold="True" ForeColor="White" Height="30px" onclick="btnPopulation_Click" 
                            Visible="False" />
                    </div>
                     <div class="MyContainRight">
                         <asp:Literal ID="VehPopulationGraph" runat="server"></asp:Literal>
                    </div>
                    <div class="clear"></div>
                </div>
            </td>
        </tr>        
        <tr>            
            <td colspan="2">
                 <div id="Graph2">
                    <div class="MyContainLeft">                        
                        <asp:Literal ID="AccidentGraph" runat="server"></asp:Literal>                        
                    </div>
                     <div class="MyContainRight">
                         <asp:Literal ID="GDPGraph" runat="server"></asp:Literal>
                    </div>
                    <div class="clear"></div>
                </div>
            </td>
        </tr>
        <tr>            
            <td colspan="2">
                <div id="Graph3">
                    <div class="MyContainLeft">                        
                                              
                    </div>
                     <div class="MyContainRight">
                         
                         <asp:Button ID="btnNxt" runat="server" BackColor="#0066FF" 
                             BorderColor="#33CC33" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" 
                             ForeColor="White" Height="30px" onclick="btnNxt_Click" 
                             Text="Transport GDP View" Width="20em" />
                         
                    </div>
                    <div class="clear"></div>
                </div>
            </td>
        </tr>
        </table>
</asp:Content>

