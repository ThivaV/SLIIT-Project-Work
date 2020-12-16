<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Home.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
<title>Home</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="CSS/upcome.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="CSS/jquery-1.2.6.min.js"></script>
<script type="text/javascript" src="CSS/jquery.galleriffic.js"></script>


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
<div id="Layer1" style="position:absolute; left:185px; top:3px; width:903px; height:1012px; z-index:102"><img src="Images/Frame.jpg" width="903" id="IMG1" onclick="return IMG1_onclick()" style="height: 1365px">
    &nbsp; &nbsp;
    &nbsp;&nbsp;
    <asp:Panel ID="Panel3" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#0000C0"
        Height="20px" Style="z-index: 100; left: 263px; position: absolute; top: 488px"
        Width="286px">
        Up coming Events</asp:Panel>
    <asp:Panel ID="Panel4" runat="server" Height="57px" Style="z-index: 103; left: 260px;
        position: absolute; top: 417px" Width="347px">
        <img id="IMG2" src="Images/Welcome.gif" style="width: 494px; height: 51px" onclick="return IMG2_onclick()" /></asp:Panel>
        
    <asp:Panel ID="Panel1" runat="server" Height="315px" Style="z-index: 102; left: 232px;
        position: absolute; top: 513px" Width="653px">
        
        <div id="gallery" class="content" onclick="return gallery_onclick()">
					<div id="slideshow" class="slideshow">
                        <asp:Image ID="Image1" runat="server" Height="311px" ImageUrl="~/Images/Mo5.jpg"
                            Width="650px" /></div>
				</div>
<script type="text/javascript">
			$(document).ready(function() {
				var gallery = $('#gallery').galleriffic('#navigation', {
					delay:                2000,
					numThumbs:            12,
					imageContainerSel:    '#slideshow',
					controlsContainerSel: '#controls',
					titleContainerSel:    '#image-title',
					descContainerSel:     '#image-desc',
					downloadLinkSel:      '#download-link'
				});
				gallery.onFadeOut = function() {
					$('#details').fadeOut('fast');
				};
				gallery.onFadeIn = function() {
					$('#details').fadeIn('fast');
				};
			});
</script>
    </asp:Panel>
    &nbsp; &nbsp; &nbsp;
    &nbsp;&nbsp;<div style="text-align: left">
        &nbsp;</div>
</div>
        &nbsp;
<div id="Layer2" style="position:absolute; left:195px; top:21px; width:904px; height:59px; z-index:103"><img src="Images/TopNameBar.jpg" height="60" style="width: 882px"></div>
<div id="Layer3" style="position:absolute; left:195px; top:83px; width:926px; height:272px; z-index:104"><img src="Images/Flash.Image-1.jpg" height="272" style="width: 882px; position: static;">
    &nbsp; &nbsp;</div>
        &nbsp; &nbsp;
        &nbsp;&nbsp;
<div id="Layer10" style="position:absolute; left:195px; top:358px; width:923px; height:22px; z-index:105">
  <marquee bgcolor=orange height="20px" direction="left" style="width: 885px; position: static;" ><I><B>Walkers Tours Limited,Your Tour Partner in Sri Lanka&nbsp;</B></I></marquee></div>


   
<div id="Layer13" style="position:absolute; left:190px; top:1268px; width:916px; height:5px; z-index:106"><img src="Images/lower.Border.jpg" width="890" height="5"></div>
<div id="Layer14" style="position:absolute; left:460px; top:1275px; width:380px; height:16px; z-index:107"> 
  <div align="center"><span class="Apple-style-span" style="border-collapse: separate; color: rgb(0, 0, 0); font-family: 'times new roman'; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; "><span class="Apple-style-span" style="color: rgb(173, 173, 173); font-family: Verdana; font-size: 11px; text-align: -webkit-center; ">&copy; 2008 Walkers Tours All Rights Reserved</span></span>  <span class="Apple-style-span" style="border-collapse: separate; color: rgb(0, 0, 0); font-family: 'times new roman'; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; "><span class="Apple-style-span" style="color: rgb(250, 180, 0); font-family: Verdana; font-size: 11px; font-weight: bold; text-align: -webkit-center; ">|<span class="Apple-converted-space">&nbsp;</span><a href="Privacy Policy.aspx" class="copyrightsorange" style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px; color: rgb(250, 180, 0); text-decoration: none; font-weight: bold; ">Privacy Policy</a></span></span> </div>
</div>
<div id="Layer15" class="style1" style="position:absolute; left:197px; top:1296px; width:872px; height:38px; z-index:108"> 
  <div align="center"><span class="Apple-style-span" style="border-collapse: separate; color: rgb(0, 0, 0); font-family: 'times new roman'; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;"><span class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none;"><a href="Home.aspx" class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none; font-weight: normal;">Home</a>&nbsp;|&nbsp;About Sri Lanka
      <asp:Panel ID="Panel9" runat="server" ForeColor="Black" Height="357px" Style="z-index: 100;
          left: 232px; position: absolute; top: -462px" Width="644px">
          <p class="copyrights style5" style="text-align: left; font-weight: normal; font-size: 12pt; text-transform: capitalize; color: #333300; font-style: normal; font-family: 'Times New Roman'; font-variant: normal;">
              One of the biggest Buddhist celebrations of the year, the annual Esala Perahera
              is a religious ceremony during which devotees pray for good rains to cultivate the
              crops. One of Buddhism's most sacred relics, the Sacred Tooth is taken from the
              Temple of the Tooth and paraded through the streets. Following this, more festive
              events take centre stage and visitors can expect to see a lively cast of dancers,
              jugglers and fire-breathers milling amongst the crowds.</p>
          <p class="copyrights style5" style="font-weight: normal; font-size: 12pt; text-transform: capitalize;
              color: #333300; font-style: normal; font-family: 'Times New Roman'; text-align: left;
              font-variant: normal">
              <table style="z-index: 100; left: -233px; position: absolute; top: -136px">
                  <tr>
                      <td style="width: 99px">
        <asp:ImageButton ID="ImageButton1" runat="server" Height="98px" ImageUrl="~/packages/CLASSICAL.jpg"
            Style="position: static;" Width="176px" /></td>
                  </tr>
                  <tr>
                      <td style="width: 99px">
        <asp:ImageButton ID="ImageButton2" runat="server" Height="98px" ImageUrl="~/packages/CULTURAL.jpg"
            Style="position: static;" Width="176px" /></td>
                  </tr>
                  <tr>
                      <td style="width: 99px">
        <asp:ImageButton ID="ImageButton3" runat="server" Height="98px" ImageUrl="~/packages/SOUTHERN.jpg"
            Style="position: static;" Width="176px" /></td>
                  </tr>
                  <tr>
                      <td style="width: 99px">
        <asp:ImageButton ID="ImageButton4" runat="server" Height="98px" ImageUrl="~/packages/HILL.jpg"
            Style="position: static;" Width="176px" /></td>
                  </tr>
                  <tr>
                      <td style="width: 99px; height: 100px">
        <asp:ImageButton ID="ImageButton5" runat="server" Height="98px" ImageUrl="~/packages/Adventure.jpg"
            Style="position: static;" Width="176px" /></td>
                  </tr>
              </table>
              <table style="z-index: 101; left: -234px; width: 193px; position: absolute; top: -422px">
                  <tr>
                      <td style="width: 112px; height: 13px;">
                          &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<table style="width: 192px; position: static">
                              <tr>
                                  <td style="width: 59px; height: 17px">
                                      <asp:Label ID="Label1" runat="server" ForeColor="#FF8000" Height="20px" Text="Local Time"
                                          Width="71px"></asp:Label></td>
                                  <td style="width: 100px; height: 17px">
                                      <asp:TextBox ID="TextBox1" runat="server" Height="1px" OnTextChanged="TextBox1_TextChanged"
                                          Width="120px"></asp:TextBox></td>
                              </tr>
                          </table>
                          &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                          &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                          &nbsp; &nbsp;&nbsp;</td>
                  </tr>
                  <tr>
                      <td style="width: 112px; height: 33px;">
                          <img src="Images/hotnews.gif" style="width: 150px; height: 37px;" /></td>
                  </tr>
                  <tr>
                      <td style="width: 112px; height: 143px;">
                          <br />
                          <br />
                          <br />
                          <asp:Panel ID="Panel5" runat="server" Height="124px" Style="z-index: 100; left: 6px;
                              position: absolute; top: 135px" Width="191px">
                              <marquee direction="up" style="width: 204px; position: static; height: 126px;">Welcome To Sri lanka........&nbsp;&nbsp;&nbsp;&nbsp;<BR /><BR />Welcome To Sri lanka........<BR /><BR />..Trans asia transforms Into cinnamon lakeside..<BR /><BR />SriLankas Small Miracle..</marquee>
                          </asp:Panel>
                          <br />
                          <br />
                          <br />
                          <br />
                          </td>
                  </tr>
              </table>
              Commences on Esala Full
              Moon Poya Day on the month of July and Concludes on Nikini Full Moon Poya Day on
              the month of August. Esala Perahera is the grand festival of Esala held in Sri Lanka.
          </p>
          <p class="copyrights style5" style="text-align: left; font-weight: normal; font-size: 12pt; color: #333300; font-family: 'Times New Roman';">
              It is very grand with elegant costumes. Happening in July or August in Kandy, it
              has become a unique symbol of Sri Lanka. It is a Buddhist festival consisting of
              dances and richly-decorated elephants. There are fire-dances, whip-dances, Kandian
              dances and various other cultural dances. The elephants are usually adorned with
              lavish garments. The festival ends with the traditional 'diya-kepeema'.The significance
              of this great event is to invoke blessings of the gods to give the farmers rain
              to cultivate their crops. This ritual is performed by carrying the sacred tooth
              relic of the Buddha through the city streets which is done with great ceremony.
          </p>
          <p>
              &nbsp;</p>
      </asp:Panel>
      &nbsp;
      <a href="about_us/about_us.htm" class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none; font-weight: normal;"><span class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none;">|</span> </a><a href="hot_deals/sri_lanka_hot_deals.htm" class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none; font-weight: normal;">Sri Lanka Special Holiday Packages&nbsp;</a>|&nbsp;<a href="SelectPlaces.aspx" class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none; font-weight: normal;">Non-Packages, Select Your Own Places<span class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none;">|</span></a></span><span class="copyrights" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(173, 173, 173); text-decoration: none;"></span><span class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none;">About Us<br />
          | </span>&nbsp;<span class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none;"><a href="Contactus.aspx" class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none; font-weight: normal;">Contact Us <span class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none;">|</span> Site Map</a></span></span> </div>
</div>
&nbsp;
        <asp:Panel ID="Panel2" runat="server" Height="590px" Style="z-index: 100; left: 200px;
            position: absolute; top: 494px" Width="215px">
        </asp:Panel>
<ul>
<li>
    <table id="TABLE1" style="z-index: 109; left: 188px; width: 915px; position: absolute;top: 380px" onclick="return TABLE1_onclick()">
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
    <table style="z-index: 110; left: 432px; position: absolute; top: 1200px">
        <tr>
            <td style="width: 100px">
        <asp:ImageButton ID="ImageButton6" runat="server" Height="56px" ImageUrl="~/packages/summer.jpg"
            PostBackUrl="~/packages/Excursion_Programs_in_Sri_Lanka_Summer,%202009.pdf" Style="position: static;" Width="240px" /></td>
            <td style="width: 100px">
        <asp:ImageButton ID="ImageButton7" runat="server" Height="56px" ImageUrl="~/packages/winter.jpg"
            PostBackUrl="~/packages/Excursion_Programs_in_Sri_Lanka_Winter,%202009.pdf" Style="position: static;" Width="240px" /></td>
        </tr>
    </table>
</li>
</ul>

    </div>
    </form>
</body>
</html>
