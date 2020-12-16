<%@ Page Language="C#" AutoEventWireup="true" CodeFile="col-city.aspx.cs" Inherits="Places" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
<title>Places</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

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

<style type="text/css">
<!--
#Layer6 {
	position:absolute;
	left:147px;
	top:689px;
	width:554px;
	height:359px;
	z-index:16;
}
#Layer16 {
	position:absolute;
	left:71px;
	top:639px;
	width:225px;
	height:181px;
	z-index:16;
}
#Layer17 {
	position:absolute;
	left:378px;
	top:642px;
	width:218px;
	height:164px;
	z-index:17;
}
#Layer18 {
	position:absolute;
	left:675px;
	top:640px;
	width:232px;
	height:176px;
	z-index:18;
}
#Layer19 {
	position:absolute;
	left:74px;
	top:880px;
	width:215px;
	height:175px;
	z-index:19;
}
#Layer20 {
	position:absolute;
	left:377px;
	top:876px;
	width:226px;
	height:184px;
	z-index:20;
}
#Layer21 {
	position:absolute;
	left:675px;
	top:872px;
	width:233px;
	height:189px;
	z-index:21;
}
#Layer22 {
	position:absolute;
	left:215px;
	top:1106px;
	width:221px;
	height:185px;
	z-index:22;
}
#Layer23 {
	position:absolute;
	left:594px;
	top:1106px;
	width:205px;
	height:185px;
	z-index:23;
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

html>body .hovermenu ul li a:active{ /* Apply mousedown effect only to NON IE browsers */
border-style: inset;
}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
<div id="Layer1" style="position:absolute; left:170px; top:3px; width:903px; height:1084px; z-index:1"><img src="Images/Frame.jpg" width="903" style="height: 1315px">
    <asp:Panel ID="Panel2" runat="server" Height="26px" Style="z-index: 107; left: 6px;
        position: absolute; top: 382px" Width="905px">
        <table id="TABLE1" style="width: 915px; position: static;" onclick="return TABLE1_onclick()">
        <tr>
            <td style="width: 100px; height: 20px;">           
                <div class="hovermenu">
                <ul style="z-index: 102; left: 0px; width: 892px; position: absolute; top: 0px">
                    <li><a href="Home.aspx"style="width: 144px; position: static; height: 15px;">Home</a></li><li><a href="About SriLanka.aspx" style="width: 141px; position: static; height: 15px;">About SriLanka</a></li><li><a href="Services.aspx" style="position: static; width: 123px; height: 15px;">Services</a></li><li><a href="aboutUs.aspx" style="position: static; width: 128px; height: 15px;">About Us</a></li><li><a href="Contactus.aspx" style="width: 146px; position: static; height: 15px;">Contact Us</a></li><li><a href="CustmerLogIn.aspx" style="width: 111px; position: static; height: 15px;">Login</a></li></ul>
                </div>
            </td>
        </tr>
    </table>
    </asp:Panel>
    &nbsp;&nbsp;
    <asp:Panel ID="Panel25" runat="server" Height="33px" Style="z-index: 103; left: -104px;
        position: absolute; top: 997px" Width="23px">
        &nbsp; &nbsp;
        <table style="z-index: 104; left: 171px; width: 776px; position: absolute; top: -36px">
            <tr>
                <td style="width: 100px; height: 13px">
    <asp:Panel ID="Panel20" runat="server" Font-Italic="True" Font-Size="Large" ForeColor="Firebrick"
        Height="28px" Style="position: static;"
        Width="206px">
        3 Star Hotels</asp:Panel>
                </td>
                <td style="width: 122px; height: 13px">
                    &nbsp;</td>
                <td style="width: 333px; height: 13px">
                    </td>
            </tr>
            <tr>
                <td style="width: 100px">
            <asp:Image ID="Image3" runat="server" Height="146px" ImageUrl="~/Images/galle face 1.jpg"
                Width="113px" /></td>
                <td style="width: 122px">
        <asp:Panel ID="Panel27" runat="server" Height="50px" Style="position: static;" Width="436px" Font-Bold="True" Font-Size="X-Large" ForeColor="Firebrick">
            Galle Face Hotel</asp:Panel>
        <asp:Panel ID="Panel28" runat="server" Height="90px" Style="position: static;" Width="433px">
            Address : 2, Galle road, Colombo 3, Sri Lanka.
            <br />
            Hotel Location : City Center
            <br />
            Only 45 minutes from the airport and directly across from Galle Face Green, the
            hotel is within walking distance to shops and restaurants.<asp:HyperLink ID="HyperLink3"
                runat="server" ForeColor="RoyalBlue" style="z-index: 100; left: 570px; position: absolute; top: 184px">Reserve...</asp:HyperLink>
            <br />
            <br />
        </asp:Panel>
                </td>
                <td style="width: 333px">
                    &nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel10" runat="server" Height="11px" Style="z-index: 104; left: -116px;
        position: absolute; top: 916px" Width="19px">
        &nbsp;
        <table style="z-index: 105; left: 183px; position: absolute; top: -378px">
            <tr>
                <td style="width: 88px; height: 61px;">
    <asp:Panel ID="Panel4" runat="server" Font-Italic="True" Font-Size="Large" ForeColor="Firebrick"
        Height="28px" Style="position: static;"
        Width="206px">
        5 Star Hotels</asp:Panel>
                </td>
                <td style="width: 100px; height: 61px;">
                    &nbsp;</td>
                <td style="width: 100px; height: 61px;">
                    </td>
            </tr>
            <tr>
                <td style="width: 88px; height: 21px">
            <asp:Image ID="Image1" runat="server" Height="157px" ImageUrl="~/Images/taj 1.jpg"
                Width="119px" /></td>
                <td style="width: 100px; height: 21px">
        <asp:Panel ID="Panel12" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="IndianRed"
            Height="50px" Style="position: static;"
            Width="458px">
            Taj samudra</asp:Panel>
        <asp:Panel ID="Panel13" runat="server" Height="90px" Style="position: static;" Width="461px">
            Address : 25 Galle Face Centre Road Colombo 03 Sri Lanka<br />
            Hotel Location : City Center<br />
            Boasting a tranquil ambience and comfortable accommodation, this property is an
            ideal place for business as well as leisure travellers.<asp:LinkButton ID="LinkButton1"
                runat="server" ForeColor="Blue" OnClick="LinkButton1_Click">Reserve...</asp:LinkButton></asp:Panel>
                </td>
                <td style="width: 100px; height: 21px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 88px; height: 10px">
                </td>
                <td style="width: 100px; height: 10px">
                    &nbsp;</td>
                <td style="width: 100px; height: 10px">
                </td>
            </tr>
            <tr>
                <td style="width: 88px">
            &nbsp;<asp:Image ID="Image2" runat="server" Height="144px" ImageUrl="~/Images/hillton001.jpg"
                Width="118px" /></td>
                <td style="width: 100px">
        <asp:Panel ID="Panel17" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Firebrick"
            Height="50px" Style="position: static;"
            Width="432px">
            Hillton hotel</asp:Panel>
        <asp:Panel ID="Panel18" runat="server" Height="90px" Style="position: static;" Width="433px">
            Address : No 2, Sir Chittampalam A Gardiner Mawatha Colombo-02 Hotel Location :
            City Center&nbsp;<br />
            Llocated in the heart of the business centre and 32 kilometres from Bandaranaike
            International Airport . The hotel offers an extensive choice of business and leisure
            facilities.<asp:HyperLink ID="HyperLink2" runat="server" ForeColor="RoyalBlue">Reserve...</asp:HyperLink>&nbsp;
        </asp:Panel>
                </td>
                <td style="width: 100px">
        <asp:Panel ID="Panel19" runat="server" Height="117px" Style="position: static;" Width="96px" Font-Bold="True" Font-Size="Medium" ForeColor="DarkRed">
            </asp:Panel>
                </td>
            </tr>
        </table>
        &nbsp;
    </asp:Panel>
    &nbsp;
    <asp:Panel ID="Panel3" runat="server" ForeColor="Maroon" Height="26px" Style="z-index: 106;
        left: 252px; position: absolute; top: 429px" Width="388px">
        <strong>Hotels and Accommodation guide in Colombo </strong>
    </asp:Panel>
    &nbsp;
</div>
<div id="Layer2" style="position:absolute; left:179px; top:22px; width:902px; height:59px; z-index:2"><img src="Images/TopNameBar.jpg" height="60" style="width: 883px"></div>
<div id="Layer3" style="position:absolute; left:180px; top:83px; width:901px; height:272px; z-index:3"><img src="Images/Flash.Image-1.jpg" height="272" style="width: 882px; position: static;"></div>
<div id="Layer10" style="position:absolute; left:179px; top:360px; width:907px; height:22px; z-index:10">
  <marquee bgcolor=orange height=22 direction=left style="width: 886px" >
<i> <B> Walkers Tours,Your Tour Partner in Sri Lanka </B></i> </marquee></div>
<div id="Layer13" style="position:absolute; left:174px; top:1223px; width:916px; height:5px; z-index:13"><img src="Images/lower.Border.jpg" width="890" height="5"></div>
<div id="Layer14" style="position:absolute; left:426px; top:1232px; width:380px; height:16px; z-index:14"> 
  <div align="center"><span class="Apple-style-span" style="border-collapse: separate; color: rgb(0, 0, 0); font-family: 'times new roman'; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; "><span class="Apple-style-span" style="color: rgb(173, 173, 173); font-family: Verdana; font-size: 11px; text-align: -webkit-center; ">&copy; 2008 Walkers Tours All Rights Reserved</span></span>  <span class="Apple-style-span" style="border-collapse: separate; color: rgb(0, 0, 0); font-family: 'times new roman'; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; "><span class="Apple-style-span" style="color: rgb(250, 180, 0); font-family: Verdana; font-size: 11px; font-weight: bold; text-align: -webkit-center; ">|<span class="Apple-converted-space">&nbsp;</span><a href="../../HomeFinal/privacy.htm" class="copyrightsorange" style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px; color: rgb(250, 180, 0); text-decoration: none; font-weight: bold; ">Privacy Policy</a></span></span> </div>
</div>
<div id="Layer15" class="style1" style="position:absolute; left:169px; top:1255px; width:902px; height:38px; z-index:15"> 
  <div align="center"><span class="Apple-style-span" style="border-collapse: separate; color: rgb(0, 0, 0); font-family: 'times new roman'; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;"><span class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none;"><a href="../../HomeFinal/index.html" class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none; font-weight: normal;">Home</a>&nbsp;|&nbsp;About Sri Lanka <a href="../../HomeFinal/about_us/about_us.htm" class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none; font-weight: normal;"><span class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none;">|</span> </a><a href="../../HomeFinal/hot_deals/sri_lanka_hot_deals.htm" class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none; font-weight: normal;">Sri Lanka Special Holiday Packages&nbsp;</a>|&nbsp;<a href="../../HomeFinal/top_attractions/historical destinations.htm" class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none; font-weight: normal;">Non-Packages, Select Your Own Places<span class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none;">|</span></a><a href="../../HomeFinal/services/services.htm" class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none; font-weight: normal;">Our Other Services</a>|<a href="../../HomeFinal/tours/tours.htm" class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none; font-weight: normal;">Sri Lanka Tours</a></span>&nbsp;<span class="copyrights" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(173, 173, 173); text-decoration: none;">|</span><span class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none;">About Us </span>&nbsp;<span class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none;"><a href="../../HomeFinal/contact.php" class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none; font-weight: normal;">Contact Us <span class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none;">|</span> Site Map</a></span></span> </div>
</div>
<p>
    &nbsp;</p>
<p>
    <asp:Panel ID="Panel1" runat="server" Font-Bold="False" Height="75px" Style="z-index: 16;
        left: 237px; position: absolute; top: 459px" Width="725px">
        The definitive guide to Colombo Hotels. The guide to hotels and accommodation in
        Colombo provides a brief summary, customer ratings and reviews for hotels and accommodation.
        For a quick summary see the list of hotels and accommodation in Colombo.
    </asp:Panel>
  <script type="text/javascript">
<!--
var MenuBar1 = new Spry.Widget.MenuBar("MenuBar1", {imgDown:"SpryAssets/SpryMenuBarDownHover.gif", imgRight:"SpryAssets/SpryMenuBarRightHover.gif"});
//-->
    </script></p>

    
    </div>
    </form>
</body>
</html>
