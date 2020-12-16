<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserNoteMaker.aspx.cs" Inherits="index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <%-- Master Page Contant--%>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="shortcut icon" href="css/images/favicon.ico" type="image/x-icon" />
    <title></title>
    <link href="css/style.css" rel="stylesheet" type="text/css" media="screen" />
    <script src="Scripts/swfobject_modified.js" type="text/javascript"></script>
    <%-- Master Page Contant--%>   <%--Table Style--%>
   <style type="text/css">
        .style1
        {
            width: 98%;
        }
        .style2
        {
            width: 154px;
        }
        .style3
        {
            width: 131px;
        }
        .style4
        {
            width: 131px;
            height: 21px;
        }
        .style5
        {
            width: 154px;
            height: 21px;
        }
        .style6
        {
            height: 21px;
        }
    </style>
    <%--Table Style--%>   <%--Gmap--%>
   <script src="http://maps.google.com/maps?file=api&amp;v=2&amp;sensor=false&amp;key=ABQIAAAAuPsJpk3MBtDpJ4G8cqBnjRRaGTYH6UMl8mADNa0YKuWNNa8VNxQCzVBXTx2DYyXGsTOxpWhvIG7Djw" type="text/javascript"></script>
    <script type="text/javascript">

        function initialize() {
            if (GBrowserIsCompatible()) {
                // create map and add controls
                var map = new GMap2(document.getElementById("map"));
                map.addControl(new GLargeMapControl());
                map.addControl(new GMapTypeControl());
                map.addMapType(G_SATELLITE_3D_MAP);              

                // set centre point of map
                var centrePoint = new GLatLng('6.932817124836652', '79.86442565917969');
                map.setCenter(centrePoint, 9);                

                // add a draggable marker
                var marker = new GMarker(centrePoint, { draggable: true });
                map.addOverlay(marker);

                // add a drag listener to the map
                GEvent.addListener(marker, "dragend", function () {
                    var point = marker.getPoint();
                    map.panTo(point);
                    document.getElementById("txtLatitude").value = point.lat();
                    document.getElementById("txtLongitude").value = point.lng();
                });
            }
        }
    </script>
    <%--GMap--%>

</head>
<body onload="initialize()" onunload="GUnload()">
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"/> 
    <div id="wrapper">    
    	<!-- Header -->
		<div id="topheader">
        	<div class="title"><img src="css/images/logo.png"/></div>
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
          
        <!-- Inner Container -->        
        <div id="container">                    
          
            <table align="center" class="style1" style="margin: 5px">
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td colspan="2">
                        <asp:Label ID="Label11" runat="server" Text="Search Place :"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td colspan="2">
                        <div id="map" style="border-style: groove; border-color: #C5E705; width: 600px; height: 300px"></div>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style4">
                    </td>
                    <td class="style5">
                        <asp:Label ID="Label1" runat="server" Text="Country :"></asp:Label>
                    </td>
                    <td class="style6">
                        <asp:TextBox ID="txtCountry" runat="server" Height="24px" Width="15em">Sri Lanka</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style2">
                        <asp:Label ID="Label2" runat="server" Text="Region :"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtRegion" runat="server" Height="24px" Width="15em"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                    </td>
                    <td class="style5">
                        <asp:Label ID="Label3" runat="server" Text="Address :"></asp:Label>
                    </td>
                    <td class="style6">
                        <asp:TextBox ID="txtAddress" runat="server" Height="70px" TextMode="MultiLine" Width="25em"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style2">
                        <asp:Label ID="Label4" runat="server" Text="E-mail :"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" Height="24px" Width="25em"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style2">
                        <asp:Label ID="Label5" runat="server" Text="Telephone No :"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtTelNo" runat="server" Height="24px" Width="15em"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style2">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style2">
                        <asp:Label ID="Label6" runat="server" Text="Latitude :"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtLatitude" runat="server" Height="24px" ReadOnly="True" Width="15em">6.932817124836652</asp:TextBox>
                        <asp:Label ID="lblLat" runat="server" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style2">
                        <asp:Label ID="Label7" runat="server" Text="Longitude :"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtLongitude" runat="server" Height="24px" ReadOnly="True" Width="15em">79.86442565917969</asp:TextBox>
                        <asp:Label ID="lblLng" runat="server" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style2">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style2">
                        <asp:Label ID="Label8" runat="server" Text="Organization Type :"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlOrganizationType" runat="server" Height="24px" 
                            Width="15em">
                            <asp:ListItem Selected="True" Value="Select">-- Select --</asp:ListItem>
                            <asp:ListItem>Hospital</asp:ListItem>
                            <asp:ListItem>Police</asp:ListItem>
                            <asp:ListItem>Hotel</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style2">
                        <asp:Label ID="Label9" runat="server" Text="Organization Name :"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtOrganizationName" runat="server" Height="24px" Width="25em"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style2">
                        <asp:Label ID="Label10" runat="server" Text="Organization Description :"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtOrganizationDes" runat="server" Height="70px" 
                            TextMode="MultiLine" Width="25em"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style2">
                        Organization Url :</td>
                    <td>
                        <asp:TextBox ID="txtOrganizationUrl" runat="server" Height="24px" Width="25em"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style2">
                        &nbsp;</td>
                    <td>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style2">
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="btnEnter" runat="server" Height="28px" onclick="btnEnter_Click" Text="Enter" Width="8em" />
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style2">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </div>  
        <!-- End of Inner Container -->     

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
