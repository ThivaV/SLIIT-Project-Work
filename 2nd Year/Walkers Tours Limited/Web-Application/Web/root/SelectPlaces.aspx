<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SelectPlaces.aspx.cs" Inherits="SelectPlaces" %>

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
    
<div id="Layer1" style="position:absolute; left:165px; top:1px; width:844px; height:1276px; z-index:102"><img src="Images/Frame.jpg" width="903" style="height: 1304px">
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
</div>
<div id="Layer2" style="position:absolute; left:176px; top:20px; width:902px; height:59px; z-index:103"><img src="Images/TopNameBar.jpg" height="60" style="width: 881px">&nbsp;&nbsp;&nbsp;
</div>
<div id="Layer3" style="position:absolute; left:175px; top:82px; width:904px; height:272px; z-index:104"><img src="Images/Flash.Image-1.jpg" width="882" height="272" style="position: static;"></div>
<div id="Layer10" style="position:absolute; left:177px; top:359px; width:907px; height:22px; z-index:105">
  <marquee bgcolor=orange width=880px height=22 direction=left >
<i> <B> Walkers Tours,Your Tour Partner in Sri Lanka </B></i> </marquee></div>
<div id="Layer11" style="position:absolute; left:167px; top:382px; width:908px; height:1px; z-index:106">
<table id="TABLE1" style="width: 915px; position: static;" onclick="return TABLE1_onclick()">
        <tr>
            <td style="width: 100px; height: 21px;">           
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
    <asp:Panel ID="Panel1" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Olive"
        Height="30px" Style="z-index: 100; left: 318px; position: absolute; top: 53px"
        Width="253px" Direction="LeftToRight">
        Sri Lankan Tour Spotes</asp:Panel>
    <table style="z-index: 103; left: 289px; position: absolute; top: 92px">
        <tr>
            <td style="width: 100px">
        <img src="Images/POLAN.jpg" /></td>
        </tr>
        <tr>
            <td style="width: 100px; height: 131px">
    <asp:Panel ID="Panel15" runat="server" Height="108px" Style="position: static;" Width="298px" BorderColor="#FFE0C0" BorderStyle="Solid" BorderWidth="1px">
        located at a distance of 216 km from Colombo-was the capital of Sri Lanka in medieval
        times. The city and the surrounding area were watered by a unique irrigational complex
        known as the Sea of Parakrama.&nbsp;
        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">More...</asp:LinkButton></asp:Panel>
            </td>
        </tr>
    </table>
</div>
<div id="Layer13" style="position:absolute; left:170px; top:1206px; width:916px; height:5px; z-index:108"><img src="Images/lower.Border.jpg" width="890" height="5"></div>
<div id="Layer14" style="position:absolute; left:434px; top:1216px; width:380px; height:16px; z-index:109"> 
  <div align="center"><span class="Apple-style-span" style="border-collapse: separate; color: rgb(0, 0, 0); font-family: 'times new roman'; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; "><span class="Apple-style-span" style="color: rgb(173, 173, 173); font-family: Verdana; font-size: 11px; text-align: -webkit-center; ">&copy; 2008 Walkers Tours All Rights Reserved</span></span>  <span class="Apple-style-span" style="border-collapse: separate; color: rgb(0, 0, 0); font-family: 'times new roman'; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; "><span class="Apple-style-span" style="color: rgb(250, 180, 0); font-family: Verdana; font-size: 11px; font-weight: bold; text-align: -webkit-center; ">|<span class="Apple-converted-space">&nbsp;</span><a href="Privacy Policy.aspx" class="copyrightsorange" style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px; color: rgb(250, 180, 0); text-decoration: none; font-weight: bold; ">Privacy Policy</a></span></span> </div>
</div>
<div id="Layer15" class="style1" style="position:absolute; left:171px; top:1239px; width:902px; height:38px; z-index:110"> 
  <div align="center"><span class="Apple-style-span" style="border-collapse: separate; color: rgb(0, 0, 0); font-family: 'times new roman'; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;"><span class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none;"><a href="Home.aspx" class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none; font-weight: normal;">Home</a>&nbsp;|&nbsp;About Sri Lanka <a href="file:///Q|/sliit/project-09/prototype/HomeFinal/about_us/about_us.htm" class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none; font-weight: normal;"><span class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none;">|</span> </a><a href="file:///Q|/sliit/project-09/prototype/HomeFinal/hot_deals/sri_lanka_hot_deals.htm" class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none; font-weight: normal;">Sri Lanka Special Holiday Packages&nbsp;</a>|&nbsp;<a href="SelectPlaces.aspx" class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none; font-weight: normal;">Non-Packages, Select Your Own Places<span class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none;">|</span></a></span><span class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none;">About Us 
      <br />
      |</span>&nbsp;<span class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none;"><a href="Contactus.aspx" class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none; font-weight: normal;">Contact Us <span class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none;">|</span> Site Map</a></span></span> </div>
</div>
        <asp:Panel ID="Panel6" runat="server" Height="41px" Style="z-index: 100; left: 179px;
            position: absolute; top: 334px" Width="190px">
            <asp:ImageButton ID="ImageButton6" runat="server" Height="41px" ImageUrl="~/Images/LogIn.jpg"
                Width="190px" /></asp:Panel>
        <asp:Panel ID="Panel7" runat="server" Height="28px" Style="z-index: 111; left: 314px;
            position: absolute; top: 641px" Width="610px">
            &nbsp;
            <table style="position: static">
                <tr>
                    <td style="width: 100px; height: 47px">
            <asp:Image ID="Image1" runat="server" Height="45px" ImageUrl="~/Images/colombo-.jpg"
                Width="302px" /></td>
                    <td style="width: 100px; height: 47px">
        <asp:Image ID="Image2" runat="server" Height="45px" ImageUrl="~/Images/KANDY-city.jpg"
            Width="300px" /></td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 196px">
    <asp:Panel ID="Panel8" runat="server" Height="187px" Style="position: static;" Width="300px" BorderColor="#FFE0C0" BorderStyle="Solid" BorderWidth="1px">
        Situated 40 Km, from the International Airport, Colombo is the largest city and
        former administrative capital of Sri Lanka. It is located on the west coast of the
        Island and adjacent Sri Jayawardenepura Kotte, the present administrative capital
        of Sri lanka. Colombo is a busy and vibrant city with mixture of modern life with
        sy scrapers and five star hotels and long lasting colonial buildings.&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">More...</asp:LinkButton><br />
        <br />
    </asp:Panel>
                    </td>
                    <td style="width: 100px; height: 196px">
    <asp:Panel ID="Panel13" runat="server" Height="200px" Style="position: static;" Width="300px" BorderColor="#FFE0C0" BorderStyle="Solid" BorderWidth="1px">
        Kandy, the last royal capital of Sri Lanka is a major tourist destination.Famous
        for the Temple of the Tooth and many other temples the city could be called the
        cultural capital of the island.This bustling market town is rich in cultural diversity
        has plenty of iteneries to offer to the tourists from songs dances and handy crafts
        to ancient temples and adventure activities. Kandy is a good transit point to the
        cultural triangle to the north or hill country to the south.<asp:LinkButton ID="LinkButton3"
            runat="server" OnClick="LinkButton3_Click">More...</asp:LinkButton>&nbsp;
        <br />
    </asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px">
        <asp:Image ID="Image3" runat="server" Height="45px" ImageUrl="~/Images/GALLE.jpg"
            Width="300px" /></td>
                    <td style="width: 100px">
                <asp:Image ID="Image4" runat="server" Height="45px" ImageUrl="~/Images/SIGIRIYA.jpg"
                    Width="300px" /></td>
                </tr>
                <tr>
                    <td style="width: 100px">
    <asp:Panel ID="Panel14" runat="server" Height="160px" Style="position: static;" Width="300px" BorderColor="#FFE0C0" BorderStyle="Solid" BorderWidth="1px">
        The capital of the southern province is a city with a colourful history. &nbsp;
        The beautiful beach of Unawatuna is just 6km south east of the city centre. The
        southern coastal belt is the most popular among the tourists and comes to life mainly
        from October through April when the monsoon moves northeast and the sea becomes
        calm with blue skies.&nbsp;
        <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">More...</asp:LinkButton></asp:Panel>
                    </td>
                    <td style="width: 100px">
    <asp:Panel ID="Panel17" runat="server" Height="163px" Style="position: static;" Width="300px" BorderColor="#FFE0C0" BorderStyle="Solid" BorderWidth="1px">
        Sri Lankan architectural tradition is well displayed at Sigiriya, the best preserved
        city centre in Asia from the first millennium, with its combination of buildings
        and gardens with their trees, pathways, water gardens, the fusion of symmetrical
        and asymmetrical elements, use of varying levels and of axial and radial planning.<asp:LinkButton
            ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">More...</asp:LinkButton></asp:Panel>
                    </td>
                </tr>
            </table>
        </asp:Panel>

    </div>
    </form>
</body>
</html>
