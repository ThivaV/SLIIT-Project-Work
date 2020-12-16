<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Get Register.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"> </meta>
<title> Get Register </title>
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

function Layer10_onclick() {

}

//-->
</script>
<style type="text/css">
<!--
#apDiv1 {
	position:absolute;
	left:321px;
	top:707px;
	width:628px;
	height:620px;
	z-index:114;
	background-color: #FFFFFF;
}
#apDiv2 {
	position:absolute;
	left:38px;
	top:1371px;
	width:940px;
	height:5px;
	z-index:115;
}
#apDiv3 {
	position:absolute;
	left:331px;
	top:1378px;
	width:350px;
	height:18px;
	z-index:116;
}
#apDiv4 {
	position:absolute;
	left:43px;
	top:1401px;
	width:916px;
	height:40px;
	z-index:117;
}
.style1 {
	font-size: 11px
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
    
<div id="Layer1" style="position:absolute; left:160px; top:7px; width:903px; height:254px; z-index:1"> 
  <p><img src="Images/Frame.jpg" width="937" align="middle" id="IMG1" onClick="return IMG1_onclick()" style="height: 1082px"> 
      <asp:Panel ID="Panel2" runat="server" Height="38px" Style="z-index: 100; left: 5px;
          position: absolute; top: 381px" Width="920px">
          <table id="TABLE1" style="z-index: 110; left: 1px; width: 915px; position: absolute;top: 0px" onclick="return TABLE1_onclick()">
        <tr>
            <td style="width: 100px; height: 20px;">           
                <div class="hovermenu">
                <ul style="z-index: 102; left: 4px; width: 892px; position: absolute; top: 3px">
                    <li><a href="Home.aspx"style="width: 144px; position: static; height: 15px;">Home</a></li><li><a href="About SriLanka.aspx" style="width: 141px; position: static; height: 15px;">About SriLanka</a></li><li><a href="Services.aspx" style="position: static; width: 123px; height: 15px;">Services</a></li><li><a href="aboutUs.aspx" style="position: static; width: 128px; height: 15px;">About Us</a></li><li><a href="Contactus.aspx" style="width: 146px; position: static; height: 15px;">Contact Us</a></li><li><a href="CustmerLogIn.aspx" style="width: 138px; position: absolute; height: 15px; z-index: 100; left: 762px; top: 0px;">Login</a></li>
                </ul>
                </div>
            </td>
        </tr>
    </table>
      </asp:Panel>
      &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;</p></div>
    
<div id="Layer2" style="position:absolute; left:169px; top:28px; width:935px; height:51px; z-index:2"><img src="Images/TopNameBar.jpg" height="55" style="width: 917px"></div>
<div id="Layer3" style="position:absolute; left:171px; top:85px; width:931px; height:279px; z-index:3"><img src="Images/Flash.Image-1.jpg" style="width: 915px; position: static;" height="272"></div>
<div id="Layer10" style="position:absolute; left:168px; top:367px; width:923px; height:18px; z-index:10" onclick="return Layer10_onclick()">
  <marquee bgcolor=orange width=921px height=20 direction=right behavior=alternate><I>Walkers 
Tours,Your Tour Partner in Sri Lanka </I></marquee></div>
<div class="style2" id="apDiv1" style="left: 328px; width: 219px; top: 432px; height: 1px">
    &nbsp;&nbsp;<table style="position: static">
        <tr>
            <td style="width: 103px">
    <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="Firebrick"
        Height="24px" Style="position: static;"
        Text="Passport No :" Width="121px"></asp:Label></td>
            <td style="width: 104px">
    <asp:TextBox ID="txtPassport" runat="server" Style="position: static;" Width="290px" AutoPostBack="True"></asp:TextBox></td>
            <td style="width: 104px">
            </td>
        </tr>
        <tr>
            <td style="width: 103px">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="Firebrick"
        Height="20px" Style="position: static;"
        Text="First Name :" Width="95px"></asp:Label></td>
            <td style="width: 104px">
    <asp:TextBox ID="txtFirstName" runat="server" Style="position: static;" Width="290px"></asp:TextBox></td>
            <td style="width: 104px">
            </td>
        </tr>
        <tr>
            <td style="width: 103px">
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="Firebrick"
        Height="20px" Style="position: static;"
        Text="Last Name :"></asp:Label></td>
            <td style="width: 104px">
    <asp:TextBox ID="txtLastName" runat="server" Style="position: static;" Width="290px"></asp:TextBox></td>
            <td style="width: 104px">
            </td>
        </tr>
        <tr>
            <td style="width: 103px">
    <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Firebrick" Height="20px"
        Style="position: static;" Text="Address :" Font-Size="Larger"></asp:Label></td>
            <td style="width: 104px">
    <asp:TextBox ID="txtAddress" runat="server" Height="53px" Style="position: static;" TextMode="MultiLine" Width="290px"></asp:TextBox></td>
            <td style="width: 104px">
            </td>
        </tr>
        <tr>
            <td style="width: 103px">
    <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="Firebrick" Height="20px"
        Style="position: static;" Text="Country :" Font-Size="Larger" Width="82px"></asp:Label></td>
            <td style="width: 104px">
    <asp:DropDownList ID="drpCountry" runat="server" Style="position: static;" Width="290px">
        <asp:ListItem>America</asp:ListItem>
        <asp:ListItem>Africa</asp:ListItem>
        <asp:ListItem>Australia</asp:ListItem>
        <asp:ListItem>UK</asp:ListItem>
        <asp:ListItem>USA</asp:ListItem>
        <asp:ListItem>Sri Lanka</asp:ListItem>
        <asp:ListItem>India</asp:ListItem>
    </asp:DropDownList></td>
            <td style="width: 104px">
            </td>
        </tr>
        <tr>
            <td style="width: 103px; height: 26px;">
    <asp:Label ID="Label5" runat="server" ForeColor="Firebrick" Height="20px" Style="position: static;" Text="Telephone Number :" Font-Bold="True" Font-Size="Larger" Width="167px"></asp:Label></td>
            <td style="width: 104px; height: 26px;">
    <asp:TextBox ID="txtPhoneNo" runat="server" Style="position: static;" Width="290px"></asp:TextBox></td>
            <td style="width: 104px; height: 26px">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPhoneNo"
                    ErrorMessage="Enter only number variable" ValidationExpression="(\(\d{3}\)|\d{3}-)?\d{8}"
                    Width="183px"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td style="width: 103px">
    <asp:Label ID="Label7" runat="server" ForeColor="Firebrick" Height="20px" Style="position: static;" Text="Email Address :" Font-Bold="True" Font-Size="Larger" Width="143px"></asp:Label></td>
            <td style="width: 104px">
    <asp:TextBox ID="TxtEmailID" runat="server" Style="position: static;" Width="290px"></asp:TextBox></td>
            <td style="width: 104px">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtEmailID"
                    ErrorMessage="Enter the correct Email ID " ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Width="199px"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td>
    <asp:Label ID="Label9" runat="server" ForeColor="Firebrick" Height="20px" Style="position: static;" Text="Starting Date :" Font-Bold="True" Font-Size="Larger" Width="142px"></asp:Label></td>
            <td style="width: 104px">
                <table>
                    <tr>
                        <td>
                            <asp:DropDownList ID="drpMonth" runat="server">
                                <asp:ListItem Value="1">January</asp:ListItem>
                            </asp:DropDownList></td>
                        <td>
                            <asp:DropDownList ID="drpDate" runat="server">
                                <asp:ListItem>1</asp:ListItem>
                            </asp:DropDownList></td>
                        <td style="width: 133px; height: 24px">
                            <asp:DropDownList ID="drpYear" runat="server">
                                <asp:ListItem>2009</asp:ListItem>
                            </asp:DropDownList></td>
                    </tr>
                </table>
            </td>
            <td style="width: 104px">
            </td>
        </tr>
        <tr>
            <td style="width: 103px">
    <asp:Label ID="Label10" runat="server" ForeColor="Firebrick" Height="20px" Style="position: static;" Text="Duartion Of Stay :" Font-Bold="True" Font-Size="Larger" Width="152px"></asp:Label></td>
            <td style="width: 104px">
    <asp:TextBox ID="txtDuration" runat="server" Style="position: static;" Width="290px"></asp:TextBox></td>
            <td style="width: 104px">
            </td>
        </tr>
        <tr>
            <td style="width: 103px">
    <asp:Label ID="Label11" runat="server" ForeColor="Firebrick" Height="20px" Style="position: static;" Text="Any Other Questions Or Comments :" Font-Bold="True" Font-Size="Larger" Width="175px"></asp:Label></td>
            <td style="width: 104px">
    <asp:TextBox ID="txtComments" runat="server" Height="105px" Style="position: static;" TextMode="MultiLine" Width="290px" AutoPostBack="True"></asp:TextBox></td>
            <td style="width: 104px">
            </td>
        </tr>
        <tr>
            <td style="width: 103px">
            </td>
            <td style="width: 104px">
                </td>
            <td style="width: 104px">
            </td>
        </tr>
        <tr>
            <td style="width: 103px">
            </td>
            <td style="width: 104px">
            </td>
            <td style="width: 104px">
            </td>
        </tr>
        <tr>
            <td style="width: 103px; height: 3px">
            </td>
            <td style="width: 104px; height: 3px">
                <table style="position: static">
                    <tr>
                        <td style="width: 100px">
    <asp:Button ID="Btnok1" runat="server" OnClick="Button1_Click"
        Style="position: static;" Text="OK" Width="93px" BackColor="#FF8000" Font-Bold="True" Font-Italic="True" ForeColor="GhostWhite" /></td>
                        <td style="width: 100px">
    <asp:Button ID="BtnCan" runat="server" Style="position: static;" Text="Cancel" Width="92px" OnClick="Button2_Click" BackColor="#FF8000" Font-Bold="True" Font-Italic="True" ForeColor="GhostWhite" /></td>
                    </tr>
                </table>
            </td>
            <td style="width: 104px; height: 3px">
            </td>
        </tr>
    </table>
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
    <div style="text-align: center">
        &nbsp;
    </div>
</div>
<div id="apDiv2" style="left: 165px; top: 998px"><img src="Images/lower.Border.jpg" width="924" height="5"></div>
<div id="apDiv3" style="left: 423px; width: 371px; top: 1005px"><span class="Apple-style-span" style="border-collapse: separate; color: rgb(0, 0, 0); font-family: 'times new roman'; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; "><span class="Apple-style-span" style="color: rgb(173, 173, 173); font-family: Verdana; font-size: 11px; text-align: -webkit-center; ">&copy; 2008 Walkers Tours All Rights Reserved</span></span> <span class="Apple-style-span" style="border-collapse: separate; color: rgb(0, 0, 0); font-family: 'times new roman'; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; "><span class="Apple-style-span" style="color: rgb(250, 180, 0); font-family: Verdana; font-size: 11px; font-weight: bold; text-align: -webkit-center; ">|<span class="Apple-converted-space">&nbsp;</span><a href="Privacy Policy.aspx" class="copyrightsorange" style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px; color: rgb(250, 180, 0); text-decoration: none; font-weight: bold; ">Privacy Policy</a></span></span> </div>
<div id="apDiv4" style="left: 168px; top: 1026px">
  <div align="center"><span class="Apple-style-span style1" style="border-collapse: separate; color: rgb(0, 0, 0); font-family: 'times new roman'; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;"><span class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none;"><a href="Home.aspx" class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none; font-weight: normal;">Home</a>&nbsp;|&nbsp;About Sri Lanka <a href="about_us/about_us.htm" class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none; font-weight: normal;"><span class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none;">|</span> </a><a href="hot_deals/sri_lanka_hot_deals.htm" class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none; font-weight: normal;">Sri Lanka Special Holiday Packages&nbsp;</a>|&nbsp;Non-Packages, Select Your Own Places<span class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none;">|</span></span><span class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none;">About Us<span class="copyrights" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(173, 173, 173); text-decoration: none;">|</span></span><br>
  &nbsp;<span class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none;"><a href="Contactus.aspx" class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none; font-weight: normal;">Contact Us <span class="copyrightsbody" style="font-family: Verdana, Arial, Helvetica, sans-serif; color: rgb(153, 153, 153); text-decoration: none;">|</span> Site Map</a>&nbsp;
  </span></span></div>
</div>

    
    </div>
    </form>
</body>
</html>
