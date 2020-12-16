<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EDMS.aspx.cs" Inherits="index" %>

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
  
	<script src="http://maps.google.com/maps?file=api&amp;v=2&amp;sensor=false&amp;key=ABQIAAAAPDUET0Qt7p2VcSk6JNU1sBSM5jMcmVqUpI7aqV44cW1cEECiThQYkcZUPRJn9vy_TWxWvuLoOfSFBw" type="text/javascript"></script> 
	
    <style type="text/css">
        .style1
        {
            width: 80%;
        }
    </style>
</head>
<body onunload="GUnload()">
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
                    
                    <table align="center" class="style1" style="margin-left: 100px">
                        <tr>
                            <td>
                                <table>
                                    <tr>
                                        <td>
                                            <div id="map" style="width: 800px; height: 600px"></div>

                                             <script type="text/javascript"> 
                                             //<![CDATA[

                                                 // ---- Create Police Marker icon ---
                                                 var PoliceIcon = new GIcon(G_DEFAULT_ICON);
                                                 PoliceIcon.image = "ERMSimages/EDMSimages/Police.png";
                                                 // Set up our GMarkerOptions object
                                                 markerOptions1 = { icon: PoliceIcon };

                                                 // ---- Create Hospial Marker icon ---
                                                 var HosIcon = new GIcon(G_DEFAULT_ICON);
                                                 HosIcon.image = "ERMSimages/EDMSimages/Hospital.png";
                                                 // Set up our GMarkerOptions object
                                                 markerOptions2 = { icon: HosIcon };

                                                 // ---- Create Hotel Marker icon ---
                                                 var HotelIcon = new GIcon(G_DEFAULT_ICON);
                                                 HotelIcon.image = "ERMSimages/EDMSimages/Hotel.png";
                                                 // Set up our GMarkerOptions object
                                                 markerOptions3 = { icon: HotelIcon };

                                                 if (GBrowserIsCompatible()) {
                                                     function createMarker(point, html,icon) {
                                                         var marker = new GMarker(point,icon);
                                                         GEvent.addListener(marker, "click", function () {
                                                             marker.openInfoWindowHtml(html);
                                                         });
                                                         return marker;
                                                     }                                                    

                                                     // Display the map, with some controls and set the initial location 
                                                     var map = new GMap2(document.getElementById("map"));
                                                     map.addControl(new GLargeMapControl());
                                                     map.addControl(new GMapTypeControl());
                                                     map.setCenter(new GLatLng(6.935202806328216, 79.85824584960938), 9);

                                                     // Set up three markers with info windows 
                                                     // --- Police ---
                                                     var point = new GLatLng(6.916202222556309, 79.88090515136719);
                                                     var marker = createMarker(point, '<div style="width:240px">Some stuff to display in the First Info Window. With a <a href="http://localhost:1686/Root/EPISendAlerts.aspx">Link<\/a> to my home page<\/div>', markerOptions1)
                                                     map.addOverlay(marker);

                                                     var point = new GLatLng(7.065459600954116, 80.13153076171875);
                                                     var marker = createMarker(point, '<div style="width:240px">Some stuff to display in the First Info Window. With a <a href="http://localhost:1686/Root/EPISendAlerts.aspx">Link<\/a> to my home page<\/div>', markerOptions1)
                                                     map.addOverlay(marker);

                                                     var point = new GLatLng(6.871892962887516, 80.33203125);
                                                     var marker = createMarker(point, '<div style="width:240px">Some stuff to display in the First Info Window. With a <a href="http://localhost:1686/Root/EPISendAlerts.aspx">Link<\/a> to my home page<\/div>', markerOptions1)
                                                     map.addOverlay(marker);

                                                     // --- Hospital ---
                                                     var point = new GLatLng(6.904614047238085, 80.00244140625);
                                                     var marker = createMarker(point, 'Some stuff to display in the<br>Second Info Window', markerOptions2)
                                                     map.addOverlay(marker);

                                                     var point = new GLatLng(7.583050362073351, 79.97222900390625);
                                                     var marker = createMarker(point, 'Some stuff to display in the<br>Second Info Window', markerOptions2)
                                                     map.addOverlay(marker);

                                                     var point = new GLatLng(8.129929285046796, 79.95574951171875);
                                                     var marker = createMarker(point, 'Some stuff to display in the<br>Second Info Window', markerOptions2)
                                                     map.addOverlay(marker);

                                                     var point = new GLatLng(8.04563211947839, 80.101318359375);
                                                     var marker = createMarker(point, 'Some stuff to display in the<br>Second Info Window', markerOptions2)
                                                     map.addOverlay(marker);

                                                     // --- Hotel ---
                                                     var point = new GLatLng(6.933296392177385, 79.86407160758972);
                                                     var marker = createMarker(point, 'Some stuff to display in the<br>Third Info Window', markerOptions3)
                                                     map.addOverlay(marker);

                                                     var point = new GLatLng(6.800989567885457, 80.595703125);
                                                     var marker = createMarker(point, 'Some stuff to display in the<br>Third Info Window', markerOptions3)
                                                     map.addOverlay(marker);

                                                     var point = new GLatLng(6.727348043372663, 80.35675048828125);
                                                     var marker = createMarker(point, 'Some stuff to display in the<br>Third Info Window', markerOptions3)
                                                     map.addOverlay(marker);

                                                     var point = new GLatLng(6.489983332670651, 80.22491455078125);
                                                     var marker = createMarker(point, 'Some stuff to display in the<br>Third Info Window', markerOptions3)
                                                     map.addOverlay(marker);

                                                     var point = new GLatLng(6.544559985653322, 80.3924560546875);
                                                     var marker = createMarker(point, 'Some stuff to display in the<br>Third Info Window', markerOptions3)
                                                     map.addOverlay(marker);
                                                 }

                                                 else {
                                                     alert("Sorry, the Google Maps API is not compatible with this browser");
                                                 } 
                                            </script> 
                                         </td>
                                     </tr>
                                 </table>                                
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                    
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
