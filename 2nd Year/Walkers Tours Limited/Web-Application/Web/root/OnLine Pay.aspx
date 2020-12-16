<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OnLine Pay.aspx.cs" Inherits="OnLine_Pay" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
<title>OnLine Pay</title>
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
    
<div id="Layer1" style="position:absolute; left:190px; top:5px; width:903px; height:828px; z-index:102"><img src="Images/Frame.jpg" width="903" id="IMG1" onclick="return IMG1_onclick()" style="height: 1067px">
    <div id="Layer16" style="z-index: 16; left: 15px; width: 854px; position: absolute;
        top: 630px; height: 316px">
        <div align="left">
            <span class="Apple-style-span" style="word-spacing: 0px; font: 16px 'times new roman';
                text-transform: none; color: rgb(0,0,0); text-indent: 0px; white-space: normal;
                letter-spacing: normal; border-collapse: separate; orphans: 2; widows: 2; webkit-border-horizontal-spacing: 0px;
                webkit-border-vertical-spacing: 0px; webkit-text-decorations-in-effect: none;
                webkit-text-size-adjust: auto; webkit-text-stroke-width: 0px"><span class="Apple-style-span"
                    style="font-weight: 800; font-size: 18px; color: rgb(14,181,233); font-style: italic;
                    font-family: verdana">
                    <blink>Disclaimer</blink>
                </span></span>
            <br />
            <div style="text-align: center">
                <table style="z-index: 18; left: 3px; position: absolute; top: 25px">
                    <tr>
                        <td style="width: 512px; height: 26px">
                            <span style="font-size: 8pt; font-family: Verdana">Although we attempt to keep all information
                                in the WWW servers accurate and up to date, the accuracy and timeliness of the information
                                provided cannot be guaranteed.<br />
                                We hope that you will find the information helpful and easy to use, but we provide
                                all content for informational purposes only and make no representations or warranties
                                of any kind regarding the same.
                                <br />
                                Walkers Tours Limited, disclaims al! liability of any kind whatsoever arising out
                                of the use of, or in&nbsp; ability to use, its WWW servers and the information contained
                                on them. Walkers Tours Limited.
                                <br />
                                WWW servers were designed to provide information about the company, its products,
                                and links to specific external sites.
                                <br />
                                Use of this system for any purpose other than that for which it was designed is
                                unauthorized and prohibited.</span>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 512px">
                            <div id="Layer18" style="z-index: 100; left: 5px; width: 146px; position: absolute;
                                top: 169px; height: 15px">
                                <div align="center">
                                    <span class="Apple-style-span" style="word-spacing: 0px; font: 16px 'times new roman';
                                        text-transform: none; color: rgb(0,0,0); text-indent: 0px; white-space: normal;
                                        letter-spacing: normal; border-collapse: separate; orphans: 2; widows: 2; webkit-border-horizontal-spacing: 0px;
                                        webkit-border-vertical-spacing: 0px; webkit-text-decorations-in-effect: none;
                                        webkit-text-size-adjust: auto; webkit-text-stroke-width: 0px"><span class="Apple-style-span"
                                            style="font-weight: 900; font-size: 12px; color: #0033cc; font-family: Verdana;
                                            webkit-border-horizontal-spacing: 2px; webkit-border-vertical-spacing: 2px">Submitted
                                            Materials</span></span>
                                </div>
                            </div>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="font-size: 10px; width: 512px; height: 86px">
                            <span style="font-family: Verdana">All parties submitting materials to the WWW servers
                                represent and warrant that the submission, installation, copying, distribution,
                                and use of such materials in connection with the WWW servers will not violate any
                                other party's proprietary or legal rights. The submitter understands and agrees
                                that Walkers Tours Limited is not responsible for any errors created in or damage
                                to materials as a result of the installation or maint</span><span style="font-weight: normal;
                                    word-spacing: 0px; text-transform: none; text-indent: 0px; line-height: normal;
                                    font-style: normal; font-family: 'times new roman'; white-space: normal; letter-spacing: normal;
                                    border-collapse: separate; font-variant: normal; orphans: 2; widows: 2; webkit-border-horizontal-spacing: 0px;
                                    webkit-border-vertical-spacing: 0px; webkit-text-decorations-in-effect: none;
                                    webkit-text-size-adjust: auto; webkit-text-stroke-width: 0px"><span style="font-family: verdana;
                                        text-align: justify; webkit-border-horizontal-spacing: 2px; webkit-border-vertical-spacing: 2px">enance
                                        of Walk</span></span><span class="Apple-style-span" style="font-weight: normal; word-spacing: 0px;
                                            text-transform: none; text-indent: 0px; line-height: normal; font-style: normal;
                                            font-family: 'times new roman'; white-space: normal; letter-spacing: normal;
                                            border-collapse: separate; font-variant: normal; orphans: 2; widows: 2; webkit-border-horizontal-spacing: 0px;
                                            webkit-border-vertical-spacing: 0px; webkit-text-decorations-in-effect: none;
                                            webkit-text-size-adjust: auto; webkit-text-stroke-width: 0px"><span class="Apple-style-span"
                                                style="font-family: verdana; text-align: justify; webkit-border-horizontal-spacing: 2px;
                                                webkit-border-vertical-spacing: 2px">ers Tours Limited, machines, or their use by
                                                anyone accessing the Walkers Tours Limited. WWW servers.</span></span>
                        </td>
                    </tr>
                </table>
                <asp:Panel ID="Panel3" runat="server" Height="59px" Style="z-index: 19; left: 57px;
                    position: absolute; top: -222px" Width="125px">
                    <img src="Images/visa.gif" /></asp:Panel>
            </div>
        </div>
    </div>
    &nbsp;&nbsp;
</div>
<div id="Layer2" style="position:absolute; left:202px; top:24px; width:902px; height:59px; z-index:103"><img src="Images/TopNameBar.jpg" height="60" style="width: 882px"></div>
<div id="Layer3" style="position:absolute; left:202px; top:86px; width:900px; height:272px; z-index:104"><img src="Images/Flash.Image-1.jpg" height="272" style="position: static;" width="882">&nbsp;</div>
<div id="Layer10" style="position:absolute; left:197px; top:366px; width:907px; height:22px; z-index:110">
  <marquee bgcolor=orange height=22 direction=left style="width: 888px" >
<i> <B> Walkers Tours,Your Tour Partner in Sri Lanka </B></i> </marquee></div>
<div id="Layer13" style="position:absolute; left:197px; top:974px; width:916px; height:5px; z-index:113"><img src="Images/lower.Border.jpg" width="890" height="5"></div>
<div id="Layer14" style="position:absolute; left:418px; top:985px; width:380px; height:16px; z-index:114"> 
  <div align="center"><span class="Apple-style-span" style="border-collapse: separate; color: rgb(0, 0, 0); font-family: 'times new roman'; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; "><span class="Apple-style-span" style="color: rgb(173, 173, 173); font-family: Verdana; font-size: 11px; text-align: -webkit-center; ">&copy; 2008 Walkers Tours All Rights Reserved</span></span>  <span class="Apple-style-span" style="border-collapse: separate; color: rgb(0, 0, 0); font-family: 'times new roman'; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; "><span class="Apple-style-span" style="color: rgb(250, 180, 0); font-family: Verdana; font-size: 11px; font-weight: bold; text-align: -webkit-center; ">|<span class="Apple-converted-space">&nbsp;</span><a href="Privacy Policy.aspx" class="copyrightsorange" style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px; color: rgb(250, 180, 0); text-decoration: none; font-weight: bold; ">Privacy Policy</a></span></span> </div>
</div>
<div id="Layer15" class="style1" style="position:absolute; left:202px; top:1007px; width:902px; height:38px; z-index:115"> 
  <div align="center"><span class="Apple-style-span" style="border-collapse: separate; color: rgb(0, 0, 0); font-family: 'times new roman'; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;"><span class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none;"><a href="Home.aspx" class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none; font-weight: normal;">Home</a>&nbsp;|&nbsp;About SriLanka <a href="About SriLanka.aspx" class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none; font-weight: normal;"><span class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none;">|</span> </a><a href="hot_deals/sri_lanka_hot_deals.htm" class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none; font-weight: normal;">Sri Lanka Special Holiday Packages&nbsp;</a>|&nbsp;<a href="SelectPlaces.aspx" class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none; font-weight: normal;">Non-Packages, Select Your Own Places<span class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none;">|</span></a></span><span class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none;">About Us 
      <br />
      |</span>&nbsp;<span class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none;"><a href="Contactus.aspx" class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none; font-weight: normal;">Contact Us <span class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none;">|</span> Site Map</a></span></span> </div>
</div>
<script type="text/javascript">
</script>

        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 100; left: 619px; position: absolute;
            top: 666px" Width="291px"></asp:TextBox>
        <asp:Panel ID="Panel1" runat="server" BorderColor="Black" Height="204px" Style="z-index: 116;
            left: 397px; position: absolute; top: 410px" Width="405px" BackColor="White" BorderStyle="Double">
            &nbsp; &nbsp; &nbsp;&nbsp;
            <table style="z-index: 109; left: 14px; position: absolute; top: 4px; height: 200px;">
                <tr>
                    <td style="width: 100px">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="Larger"
                Height="24px" Style="position: static;"
                Text="Full Name" Width="163px"></asp:Label></td>
                    <td style="width: 100px">
            <asp:TextBox ID="txtFullName" runat="server" Style="position: static;" Width="200px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 24px">
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Larger" Style="position: static;" Text=" Credit Card Type" Width="164px"></asp:Label></td>
                    <td style="width: 100px; height: 24px">
            <asp:DropDownList ID="drpCreditCardType" runat="server" Style="position: static;" Width="200px">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>Master</asp:ListItem>
                <asp:ListItem>Visa</asp:ListItem>
            </asp:DropDownList></td>
                </tr>
                <tr>
                    <td style="width: 100px">
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Larger" Style="position: static;" Text="Enter PIN Number" Width="165px"></asp:Label></td>
                    <td style="width: 100px">
            <asp:TextBox ID="txtPinNo" runat="server" Style="position: static;" Width="200px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 21px">
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Larger" Style="position: static;" Text="Retype PIN Number" Width="165px"></asp:Label></td>
                    <td style="width: 100px; height: 21px">
            <asp:TextBox ID="txtchkPinNo" runat="server" Style="position: static;" Width="200px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 21px">
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Larger" Text="PassportNo"></asp:Label></td>
                    <td style="width: 100px; height: 21px">
                        <asp:TextBox ID="txtPassportNo" runat="server" Width="200px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 21px">
                    </td>
                    <td style="width: 100px; height: 21px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 21px">
            <asp:Button ID="BtnOkOnLine" runat="server" Style="position: static;" Text="OK" Width="150px" OnClick="BtnOkOnLine_Click" BackColor="#FF8000" BorderColor="White" ForeColor="White" /></td>
                    <td style="width: 100px; height: 21px">
            <asp:Button ID="BtnCanOnline" runat="server" Style="position: static;" Text="Cancel" Width="150px" OnClick="BtnCanOnline_Click" BackColor="#FF8000" BorderColor="White" ForeColor="White" /></td>
                </tr>
            </table>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp;
        </asp:Panel>

    
    </div>
    </form>
</body>
</html>
