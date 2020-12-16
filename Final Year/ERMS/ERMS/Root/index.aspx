<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <%-- Master Page Contant--%>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="shortcut icon" href="css/images/favicon.ico" type="image/x-icon" />
    <title></title>
    <link href="css/style.css" rel="stylesheet" type="text/css" media="screen" />
    <script src="Scripts/swfobject_modified.js" type="text/javascript"></script>
   <%-- Master Page Contant--%>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"/> 
    <div id="wrapper">    
    	<!-- Header -->
		<div id="topheader">
        	<div class="title"><img src="css/images/logo.png" /></div>
            <div class="topnavigation">
                <ul>
                    <li><a href="#">Path Finder</a></li>
                    <li><a href="#">Destination Services</a></li>
                    <li><a href="#">Statical Analyzer</a></li>
                    <li class="last"><a href="#">Mobile Helper</a></li>
                </ul>
            </div>
            <div class="clear"></div>
        </div>        
        <div id="navigation">
        	<div class="menu-start"></div>
            <div class="menu">
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Plan</a></li>
                    <li><a href="#">Service</a></li>
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Contact Us</a></li>
                    <li class="last"><a href="#">Get Registered</a></li>
                    <li class="account"><a href="#">My Account</a></li>
                </ul>
            </div>
            <div class="menu-end"></div>
            <div style="clear:both"></div>
        </div>
        <div id="slider">
        	<div class="flash">
        	  <object id="FlashID" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="946" height="243">
        	    <param name="movie" value="banner.swf" />
        	    <param name="quality" value="high" />
        	    <param name="wmode" value="opaque" />
        	    <param name="swfversion" value="6.0.65.0" />
        	    <!-- This param tag prompts users with Flash Player 6.0 r65 and higher to download the latest version of Flash Player. Delete it if you don’t want users to see the prompt. -->
        	    <param name="expressinstall" value="Scripts/expressInstall.swf" />
        	    <!-- Next object tag is for non-IE browsers. So hide it from IE using IECC. -->
        	    <!--[if !IE]>-->
        	    <object type="application/x-shockwave-flash" data="banner.swf" width="946" height="243">
        	      <!--<![endif]-->
        	      <param name="quality" value="high" />
        	      <param name="wmode" value="opaque" />
        	      <param name="swfversion" value="6.0.65.0" />
        	      <param name="expressinstall" value="Scripts/expressInstall.swf" />
        	      <!-- The browser displays the following alternative content for users with Flash Player 6.0 and older. -->
        	      <div>
        	        <h4>Content on this page requires a newer version of Adobe Flash Player.</h4>
        	        <p><a href="http://www.adobe.com/go/getflashplayer"><img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player" width="112" height="33" /></a></p>
      	        </div>
        	      <!--[if !IE]>-->
      	      </object>
        	    <!--<![endif]-->
      	    </object>
        	</div>
        </div>
        <!-- End of Header -->       
        
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>        
                <!-- Inner Container -->        
                <div id="container">
                    
                </div>  
                <!-- End of Inner Container -->  
            </ContentTemplate>
        </asp:UpdatePanel>

        <!-- Footer -->
		<div id="footer">
            <div class="footer-start"></div>
            <div class="footernav">
                <ul>
                    <li><a href="#">Plan</a></li>
                    <li><a href="#">Service</a></li>
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Contact Us</a></li>
                    <li class="last"><a href="#">Get Registered</a></li>
                </ul>
            </div>
            <div class="footer-end"></div>
            <div class="copyrights">
            	<p>Copyright &copy; <a href="#">Latlong</a> All Rights Reserved. | Terms and Conditions | Site Map</p>
            </div>
    	</div>
        <!-- End of Footer -->
    </div>
    <script type="text/javascript">
    <!--
        swfobject.registerObject("FlashID");
    //-->
    </script>
    </form>
</body>
</html>
