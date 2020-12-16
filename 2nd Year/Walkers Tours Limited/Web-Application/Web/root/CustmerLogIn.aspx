<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustmerLogIn.aspx.cs" Inherits="Services" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
<title>CustomerLogin</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script src="SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
<script language="JavaScript" type="text/JavaScript">
<!--
function MM_reloadPage(init) {  //reloads the window if Nav4 resized
  if (init==true) with (navigator) {if ((appName=="Netscape")&&(parseInt(appVersion)==4)) {
    document.MM_pgW=innerWidth; document.MM_pgH=innerHeight; onresize=MM_reloadPage; }}
  else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH) location.reload();
}
MM_reloadPage(true);
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
<link href="SpryAssets/SpryMenuBarHorizontal.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
#apDiv2 {
	position:absolute;
	left:55px;
	top:628px;
	width:884px;
	height:742px;
	z-index:16;
}
#apDiv3 {
	position:absolute;
	left:557px;
	top:690px;
	width:327px;
	height:39px;
	z-index:17;
}
.style3 {font-size: 36px}
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

html>body .hovermenu ul li a:active{ /* Apply mousedown effect only to NON IE browsers */
border-style: inset;
}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
<div id="Layer1" style="position:absolute; left:205px; top:4px; width:903px; height:796px; z-index:102"><img src="Images/Frame.jpg" width="903" id="IMG2" onclick="return IMG2_onclick()" style="height: 804px">
    <asp:Panel ID="Panel1" runat="server" Height="117px" Style="z-index: 100; left: 258px;
        position: absolute; top: 563px" Visible="False" Width="408px">
        <div style="text-align: left">
            <table>
                <tr>
                    <td colspan="2">
                        Click "Ok" button to cancel your trip to SriLanka...</td>
                </tr>
                <tr>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 217px">
                        <asp:Button ID="Button4" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Red"
                            Text="Ok" Width="90px" /></td>
                </tr>
            </table>
        </div>
    </asp:Panel>
</div>
<div id="Layer2" style="position:absolute; left:217px; top:20px; width:902px; height:59px; z-index:103"><img src="Images/TopNameBar.jpg" width="880" height="60" id="IMG1" onclick="return IMG1_onclick()"></div>
<div id="Layer3" style="position:absolute; left:216px; top:81px; width:902px; height:272px; z-index:104"><img src="Images/Flash.Image-1.jpg" width="882" height="272" style="position: static;"></div>
<div id="Layer10" style="position:absolute; left:214px; top:356px; width:907px; height:22px; z-index:105">
  <marquee bgcolor=orange height=22 direction=left style="width: 885px" ><I><B>Walkers Tours,Your Tour Partner in Sri 
Lanka </B></I></marquee></div>
<div id="Layer11" style="position:absolute; left:211px; top:378px; width:908px; height:1px; z-index:106">
<table id="TABLE1" style="width: 915px; position: static;" onclick="return TABLE1_onclick()">
        <tr>
            <td style="width: 100px; height: 20px;">           
                <div class="hovermenu">
                <ul style="z-index: 102; left: 4px; width: 892px; position: absolute; top: 3px">
                    <li><a href="Home.aspx"style="width: 144px; position: static; height: 15px;">Home</a></li>
                    <li><a href="About SriLanka.aspx" style="width: 141px; position: static; height: 15px;">About SriLanka</a></li>
                    <li><a href="Services.aspx" style="position: static; width: 123px; height: 15px;">Services</a></li>           
                    <li><a href="aboutUs.aspx" style="position: static; width: 128px; height: 15px;">About Us</a></li>
                    <li><a href="Contactus.aspx" style="width: 146px; position: static; height: 15px;">Contact Us</a></li>
                    <li><a href="CustmerLogIn.aspx" style="width: 107px; position: static; height: 15px;">Login</a></li>
                </ul>
                </div>
            </td>
        </tr>
    </table>
</div>
<div id="Layer13" style="position:absolute; left:211px; top:722px; width:916px; height:5px; z-index:107"><img src="Images/lower.Border.jpg" width="890" height="5"></div>
<div id="Layer14" style="position:absolute; left:457px; top:729px; width:380px; height:16px; z-index:108"> 
  <div align="center"><span class="Apple-style-span" style="border-collapse: separate; color: rgb(0, 0, 0); font-family: 'times new roman'; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; "><span class="Apple-style-span" style="color: rgb(173, 173, 173); font-family: Verdana; font-size: 11px; text-align: -webkit-center; ">&copy; 2008 Walkers Tours All Rights Reserved</span></span>  <span class="Apple-style-span" style="border-collapse: separate; color: rgb(0, 0, 0); font-family: 'times new roman'; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; "><span class="Apple-style-span" style="color: rgb(250, 180, 0); font-family: Verdana; font-size: 11px; font-weight: bold; text-align: -webkit-center; ">|<span class="Apple-converted-space">&nbsp;</span><a href="Privacy Policy.aspx" class="copyrightsorange" style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px; color: rgb(250, 180, 0); text-decoration: none; font-weight: bold; ">Privacy Policy</a></span></span> </div>
</div>
<div id="Layer15" class="style1" style="position:absolute; left:210px; top:750px; width:902px; height:38px; z-index:109"> 
  <div align="center"><span class="Apple-style-span" style="border-collapse: separate; color: rgb(0, 0, 0); font-family: 'times new roman'; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;"><span class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none;"><a href="Home.aspx" class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none; font-weight: normal;">Home</a>&nbsp;|&nbsp;About Sri Lanka <a href="about_us/about_us.htm" class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none; font-weight: normal;"><span class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none;">|</span> </a><a href="Readymade Packages.aspx" class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none; font-weight: normal;">Sri Lanka Special Holiday Packages&nbsp;</a>|&nbsp;<a href="SelectPlaces.aspx" class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none; font-weight: normal;">Non-Packages, Select Your Own Places<span class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none;">|</span></a></span><span class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none;">About Us 
      <br />
      |</span>&nbsp;<span class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none;"><a href="Contactus.aspx" class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none; font-weight: normal;">Contact Us <span class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none;">|</span> Site Map</a></span></span> </div>
</div>
<script type="text/javascript">
<!--
//-->
</script>

        <div style="text-align: center">
            <table style="z-index: 110; left: 458px; position: absolute; top: 441px">
                <tr>
                    <td style="width: 115px; color: #ff0000">
                        Enter Serial No &nbsp;&nbsp;
                    </td>
                    <td style="width: 100px">
                        <asp:TextBox ID="txtEnterSerialNo" runat="server"></asp:TextBox></td>
                    <td rowspan="2" style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 115px; color: #ff0000">
                        Enter PassportNo</td>
                    <td style="width: 100px">
                        <asp:TextBox ID="txtEnterPassportNo" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Error Msg"></asp:Label></td>
                </tr>
                <tr>
                    <td style="width: 115px; height: 14px">
                    </td>
                    <td style="width: 100px; height: 14px">
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Enter" Width="100px" />
                        &nbsp; &nbsp; &nbsp;&nbsp;
                    </td>
                    <td style="width: 100px; height: 14px">
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click1" Text="Cancel" Width="100px" />
                        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                    </td>
                </tr>
            </table>
        </div>

        <asp:Button ID="Button1" runat="server" BackColor="White" BorderColor="White" BorderStyle="Outset"
            Font-Bold="True" Font-Italic="True" ForeColor="Brown" Height="32px" OnClick="Button1_Click"
            Style="z-index: 101; left: 490px; position: absolute; top: 748px" Text="Packages"
            Width="143px" />

    
    </div>
    </form>
</body>
</html>
