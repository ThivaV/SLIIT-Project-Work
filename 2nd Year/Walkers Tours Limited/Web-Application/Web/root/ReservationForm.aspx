<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ReservationForm.aspx.cs" Inherits="Reservation_Form" %>

<%--<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>
--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
<title>Reservation</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script language="JavaScript" type="text/JavaScript">
<!--
function MM_reloadPage(init) {  //reloads the window if Nav4 resized
  if (init==true) with (navigator) {if ((appName=="Netscape")&&(parseInt(appVersion)==4)) {
    document.MM_pgW=innerWidth; document.MM_pgH=innerHeight; onresize=MM_reloadPage; }}
  else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH) location.reload();
}
MM_reloadPage(true);
function IMG1_onclick() {

}

//-->
</script>
<style type="text/css">
<!--
.style1 {font-size: 11px}
#apDiv1 {
	position:absolute;
	left:699px;
	top:1199px;
	width:237px;
	height:180px;
	z-index:16;
}
-->
</style>
<style type="text/css">

.hovermenu ul{
font: bold 13px arial;
padding-left: 0;
margin-left: 0;
height: 20px;
}

.hovermenu ul li{
list-style: none;
display: inline;
}

.hovermenu ul li a{
padding: 2px 0.5em;
text-decoration: none;
float: left;
color: white;
background-color: #FF9900;
border: 2px solid #FF6600;
}

.hovermenu ul li a:hover{
background-color: #FFE271;
border-style: outset;
}

<html>body .hovermenu ul li a:active{ /* Apply mousedown effect only to NON IE browsers */
border-style: inset;
}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div id="Layer1" style="position:absolute; left:185px; top:4px; width:890px; height:668px; z-index:102">&nbsp;<div style="text-align: center">
            <table style="z-index: 100; left: 126px; position: absolute; top: 411px">
                <tr>
                    <td style="width: 108px">
                        </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 108px">
                        DAte</td>
                    <td style="width: 100px">
                        <table>
                            <tr>
                                <td style="width: 100px; height: 24px">
                                    <asp:DropDownList ID="drpMonth" runat="server">
                                        <asp:ListItem Value="1">January</asp:ListItem>
                                    </asp:DropDownList></td>
                                <td style="width: 100px; height: 24px">
                                    <asp:DropDownList ID="drpDate" runat="server">
                                        <asp:ListItem>1</asp:ListItem>
                                    </asp:DropDownList></td>
                                <td style="width: 133px; height: 24px">
                                    <asp:DropDownList ID="drpYear" runat="server">
                                        <asp:ListItem>2009</asp:ListItem>
                                    </asp:DropDownList></td>
                            </tr>
                        </table>
                        &nbsp;</td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 108px; border-right: #ffff00 thin inset; border-top: #ffff00 thin inset; border-left: #ffff00 thin inset; border-bottom: #ffff00 thin inset;">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Red"
                            Text="Room Type" Width="99px"></asp:Label></td>
                    <td style="width: 100px">
                        <asp:DropDownList ID="drpRoomType" runat="server" Width="200px">
                            <asp:ListItem>Single Bed</asp:ListItem>
                            <asp:ListItem>Double Bed</asp:ListItem>
                            <asp:ListItem>Triple Bed</asp:ListItem>
                        </asp:DropDownList></td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 108px; border-right: #ffff00 thin inset; border-top: #ffff00 thin inset; border-left: #ffff00 thin inset; border-bottom: #ffff00 thin inset; height: 3px;">
                        &nbsp;
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Red"
                            Text="No Of Nights"></asp:Label></td>
                    <td style="width: 100px; border-right: #ffff00 thin inset; border-top: #ffff00 thin inset; border-left: #ffff00 thin inset; border-bottom: #ffff00 thin inset; height: 3px;">
                        <asp:DropDownList ID="DrpDwnNoOfNiht" runat="server" Width="100px">
                            <asp:ListItem Value="1"></asp:ListItem>
                            <asp:ListItem Value="2"></asp:ListItem>
                            <asp:ListItem Value="3"></asp:ListItem>
                            <asp:ListItem Value="4"></asp:ListItem>
                            <asp:ListItem Value="5"></asp:ListItem>
                            <asp:ListItem Value="6"></asp:ListItem>
                            <asp:ListItem Value="7"></asp:ListItem>
                            <asp:ListItem Value="8"></asp:ListItem>
                            <asp:ListItem Value="9"></asp:ListItem>
                            <asp:ListItem Value="10"></asp:ListItem>
                        </asp:DropDownList></td>
                    <td style="border-right: #ffff00 thin inset; border-top: #ffff00 thin inset; border-left: #ffff00 thin inset;
                        width: 100px; border-bottom: #ffff00 thin inset; height: 3px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 108px; border-right: #ffff00 thin inset; border-top: #ffff00 thin inset; border-left: #ffff00 thin inset; border-bottom: #ffff00 thin inset;">
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Red"
                            Text="No Of Rooms"></asp:Label></td>
                    <td style="width: 100px">
                        <asp:DropDownList ID="DrpDwnNoOfRoom" runat="server" Style="position: static" Width="100px">
                            <asp:ListItem Value="1"></asp:ListItem>
                            <asp:ListItem Value="2"></asp:ListItem>
                            <asp:ListItem Value="3"></asp:ListItem>
                            <asp:ListItem Value="4"></asp:ListItem>
                            <asp:ListItem Value="5"></asp:ListItem>
                            <asp:ListItem Value="6"></asp:ListItem>
                            <asp:ListItem Value="7"></asp:ListItem>
                            <asp:ListItem Value="8"></asp:ListItem>
                            <asp:ListItem Value="9"></asp:ListItem>
                            <asp:ListItem Value="10"></asp:ListItem>
                        </asp:DropDownList></td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 108px; border-right: #ffff00 thin inset; border-top: #ffff00 thin inset; border-left: #ffff00 thin inset; border-bottom: #ffff00 thin inset;">
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Red"
                            Text="No Of Visiters"></asp:Label></td>
                    <td style="width: 100px">
                        <asp:DropDownList ID="DrpDwnNoOfVisters" runat="server" Style="position: static" Width="100px">
                            <asp:ListItem Value="1"></asp:ListItem>
                            <asp:ListItem Value="2"></asp:ListItem>
                            <asp:ListItem Value="3"></asp:ListItem>
                            <asp:ListItem Value="4"></asp:ListItem>
                            <asp:ListItem Value="5"></asp:ListItem>
                            <asp:ListItem Value="6"></asp:ListItem>
                            <asp:ListItem Value="7"></asp:ListItem>
                            <asp:ListItem Value="8"></asp:ListItem>
                            <asp:ListItem Value="9"></asp:ListItem>
                            <asp:ListItem Value="10"></asp:ListItem>
                        </asp:DropDownList></td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="border-right: #ffff00 thin inset; border-top: #ffff00 thin inset; border-left: #ffff00 thin inset;
                        width: 108px; border-bottom: #ffff00 thin inset">
                                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Red"
                                        Text="Food Type" Width="103px"></asp:Label></td>
                    <td style="width: 100px">
                                    <asp:DropDownList ID="drpMealType" runat="server" Width="195px">
                                        <asp:ListItem>Bread and BreakFast</asp:ListItem>
                                        <asp:ListItem>Half Board</asp:ListItem>
                                        <asp:ListItem>Full Board</asp:ListItem>
                                    </asp:DropDownList></td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="border-right: #ffff00 thin inset; border-top: #ffff00 thin inset; border-left: #ffff00 thin inset;
                        width: 108px; border-bottom: #ffff00 thin inset">
                                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Red"
                                        Text="Guide" Width="105px"></asp:Label></td>
                    <td style="width: 100px">
                                    <asp:DropDownList ID="drpGuidType" runat="server" Width="195px" AppendDataBoundItems="True">
                                        <asp:ListItem>English Speaking Guides</asp:ListItem>
                                        <asp:ListItem>Language Speaking Guides</asp:ListItem>
                                    </asp:DropDownList></td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="border-right: #ffff00 thin inset; border-top: #ffff00 thin inset; border-left: #ffff00 thin inset;
                        width: 108px; border-bottom: #ffff00 thin inset">
                                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Red"
                                        Text="Vehicle Type"></asp:Label></td>
                    <td style="width: 100px">
                                    <asp:DropDownList ID="drpVechicleType" runat="server" Height="32px" Width="150px" AppendDataBoundItems="True">
                                        <asp:ListItem Value="Car"></asp:ListItem>
                                        <asp:ListItem Value="Luxary Car"></asp:ListItem>
                                        <asp:ListItem>Mini Coach</asp:ListItem>
                                        <asp:ListItem>Coach</asp:ListItem>
                                    </asp:DropDownList>
                    </td>
                    <td style="width: 100px">
                                    <img src="Images/landrovr.gif" /></td>
                </tr>
                <tr>
                    <td style="border-right: #ffff00 thin inset; border-top: #ffff00 thin inset; border-left: #ffff00 thin inset;
                        width: 108px; border-bottom: #ffff00 thin inset">
                    </td>
                    <td style="width: 100px">
                                    <asp:Button ID="btnok" runat="server" BackColor="#FF8000" BorderColor="White" ForeColor="White"
                                        Height="22px" OnClick="btnok_Click" Style="position: static;" Text="Ok" Width="70px" Font-Bold="True" /></td>
                    <td style="width: 100px">
                                    <asp:Button ID="btncancel" runat="server" BackColor="#FF8000" BorderColor="White"
                                        ForeColor="White" OnClick="btncancel_Click" Style="position: static;" Text="Cancel" Width="70px" Font-Bold="True" /></td>
                </tr>
                <tr>
                    <td colspan="5" style="width: 319px">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="5" style="width: 319px">
                    </td>
                </tr>
            </table>
        </div>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<div style="text-align: left">
        &nbsp;</div>
</div>
<div id="Layer2" style="position:absolute; left:195px; top:16px; width:902px; height:59px; z-index:103"><img src="Images/TopNameBar.jpg" height="60" style="width: 883px"></div>
<div id="Layer3" style="position:absolute; left:196px; top:77px; width:903px; height:272px; z-index:104"><img src="Images/Flash.Image-1.jpg" width="882" height="272" style="position: static;"></div>
        &nbsp;&nbsp;
<div id="Layer10" style="position:absolute; left:195px; top:352px; width:907px; height:22px; z-index:105">
  <marquee bgcolor=orange height=22 direction=left style="width: 884px" >
<i> <B> Walkers Tours,Your Tour Partner in Sri Lanka </B></i> </marquee></div>
<div id="Layer11" style="position:absolute; left:194px; top:374px; width:908px; height:38px; z-index:106">
<table id="TABLE1" style="z-index: 110; left: -6px; width: 915px; position: absolute;top: 0px" onclick="return TABLE1_onclick()">
        <tr>
            <td style="width: 100px; height: 20px;">           
                <div class="hovermenu">
                <ul style="z-index: 102; left: 4px; width: 892px; position: absolute; top: 3px">
                    <li><a href="Home.aspx"style="width: 144px; position: static; height: 15px;">Home</a></li>
                    <li><a href="About SriLanka.aspx" style="width: 141px; position: static; height: 15px;">About SriLanka</a></li>
                    <li><a href="Services.aspx" style="position: static; width: 123px; height: 15px;">Services</a></li>           
                    <li><a href="aboutUs.aspx" style="position: static; width: 128px; height: 15px;">About Us</a></li>
                    <li><a href="Contactus.aspx" style="width: 146px; position: static; height: 15px;">Contact Us</a></li>
                    <li><a href="CustmerLogIn.aspx" style="width: 111px; position: static; height: 15px;">Login</a></li>
                </ul>
                </div>
            </td>
        </tr>
    </table>
</div>
<div id="Layer13" style="position:absolute; left:190px; top:801px; width:916px; height:5px; z-index:108"><img src="Images/lower.Border.jpg" width="890" height="5"></div>
<div id="Layer14" style="position:absolute; left:450px; top:809px; width:380px; height:16px; z-index:109"> 
  <div align="center"><span class="Apple-style-span" style="border-collapse: separate; color: rgb(0, 0, 0); font-family: 'times new roman'; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; "><span class="Apple-style-span" style="color: rgb(173, 173, 173); font-family: Verdana; font-size: 11px; text-align: -webkit-center; ">&copy; 2008 Walkers Tours All Rights Reserved</span></span>  <span class="Apple-style-span" style="border-collapse: separate; color: rgb(0, 0, 0); font-family: 'times new roman'; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; "><span class="Apple-style-span" style="color: rgb(250, 180, 0); font-family: Verdana; font-size: 11px; font-weight: bold; text-align: -webkit-center; ">|<span class="Apple-converted-space">&nbsp;</span><a href="Privacy Policy.aspx" class="copyrightsorange" style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px; color: rgb(250, 180, 0); text-decoration: none; font-weight: bold; ">Privacy Policy</a></span></span> </div>
</div>
<div id="Layer15" class="style1" style="position:absolute; left:192px; top:831px; width:902px; height:38px; z-index:110"> 
  <div align="center"><span class="Apple-style-span" style="border-collapse: separate; color: rgb(0, 0, 0); font-family: 'times new roman'; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;"><span class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none;"><a href="Home.aspx" class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none; font-weight: normal;">Home</a>&nbsp;|&nbsp;About Sri Lanka <a href="about_us/about_us.htm" class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none; font-weight: normal;"><span class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none;">|</span> </a><a href="hot_deals/sri_lanka_hot_deals.htm" class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none; font-weight: normal;">Sri Lanka Special Holiday Packages&nbsp;</a>|&nbsp;<a href="SelectPlaces.aspx" class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none; font-weight: normal;">Non-Packages, Select Your Own Places<span class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none;">|</span></a></span><span class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none;">About Us 
      <br />
      |</span>&nbsp;<span class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none;"><a href="Contactus.aspx" class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none; font-weight: normal;">Contact Us <span class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none;">|</span> Site Map</a></span></span> </div>
</div>
&nbsp; &nbsp;&nbsp;
        <img src="Images/Frame.jpg" width="903" style="height: 877px"></div>
    </form>
</body>
</html>
