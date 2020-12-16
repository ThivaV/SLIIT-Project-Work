<%@ Page Title="" Language="C#" MasterPageFile="~/NonGmapMasterPage.master" AutoEventWireup="true" CodeFile="PathFinder.aspx.cs" Inherits="PathFinder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
        <script type="text/javascript">

            var location1;
            var location2;

            var address1;
            var address2;

            var latlng;
            var geocoder;
            var map;

            var line;

            var infowindow1;
            var infowindow2;

            var distance;

            // finds the coordinates for the two locations and calls the showMap() function
            function initialize() {
                geocoder = new google.maps.Geocoder(); // creating a new geocode object

                // getting the two address values
                address1 = document.getElementById("address1").value;
                address2 = document.getElementById("address2").value;

                // finding out the coordinates
                if (geocoder) {
                    geocoder.geocode({ 'address': address1 }, function (results, status) {
                        if (status == google.maps.GeocoderStatus.OK) {
                            //location of first address (latitude + longitude)
                            location1 = results[0].geometry.location;
                        } else {
                            alert("Geocode was not successful for the following reason: " + status);
                        }
                    });
                    geocoder.geocode({ 'address': address2 }, function (results, status) {
                        if (status == google.maps.GeocoderStatus.OK) {
                            //location of second address (latitude + longitude)
                            location2 = results[0].geometry.location;
                            // calling the showMap() function to create and show the map 
                            showMap();
                        } else {
                            alert("Geocode was not successful for the following reason: " + status);
                        }
                    });
                }
            }

            // creates and shows the map
            function showMap() {
                // center of the map (compute the mean value between the two locations)
                latlng = new google.maps.LatLng((location1.lat() + location2.lat()) / 2, (location1.lng() + location2.lng()) / 2);

                // get the map type value from the hidden field
                var maptype = document.getElementById("maptype").value;

                var typeId;

                if (maptype == "roadmap")
                    typeId = google.maps.MapTypeId.ROADMAP;
                else if (maptype == "hybrid")
                    typeId = google.maps.MapTypeId.HYBRID;
                else if (maptype == "satellite")
                    typeId = google.maps.MapTypeId.SATELLITE;
                else if (maptype == "terrain")
                    typeId = google.maps.MapTypeId.TERRAIN;

                // set map options
                // set zoom level
                // set center
                // map type
                var mapOptions =
		        {
		            zoom: 1,
		            center: latlng,
		            mapTypeId: typeId
		        };

                // create a new map object
                // set the div id where it will be shown
                // set the map options
                map = new google.maps.Map(document.getElementById("map_canvas"), mapOptions);

                // event listener to update the map type
                google.maps.event.addListener(map, 'maptypeid_changed', function () {
                    maptype = map.getMapTypeId();
                    document.getElementById('maptype').value = maptype;
                });

                // custom marker
                var rabbit = new google.maps.MarkerImage('distance-finder-custom-marker-image.png');

                // create the markers for the two locations		
                var marker1 = new google.maps.Marker({
                    map: map,
                    position: location1,
                    title: "First location",
                    icon: rabbit,
                    draggable: true
                });

                var marker2 = new google.maps.Marker({
                    map: map,
                    position: location2,
                    title: "Second location",
                    icon: rabbit,
                    draggable: true
                });

                // create the text to be shown in the infowindows
                var text1 = '<div id="content">' +
				        '<h1 id="firstHeading">First location</h1>' +
				        '<div id="bodyContent">' +
				        '<p>Coordinates: ' + location1 + '</p>' +
				        '<p>Address: ' + address1 + '</p>' +
				        '</div>' +
				        '</div>';

                var text2 = '<div id="content">' +
			        '<h1 id="firstHeading">Second location</h1>' +
			        '<div id="bodyContent">' +
			        '<p>Coordinates: ' + location2 + '</p>' +
			        '<p>Address: ' + address2 + '</p>' +
			        '</div>' +
			        '</div>';

                // create info boxes for the two markers
                infowindow1 = new google.maps.InfoWindow({
                    content: text1
                });
                infowindow2 = new google.maps.InfoWindow({
                    content: text2
                });

                // add action events so the info windows will be shown when the marker is clicked
                google.maps.event.addListener(marker1, 'click', function () {
                    infowindow1.open(map, marker1);
                });
                google.maps.event.addListener(marker2, 'click', function () {
                    infowindow2.open(map, marker2);
                });

                // add action events for dragging the markers
                google.maps.event.addListener(marker1, 'dragend', function () {
                    location1 = marker1.getPosition();
                    drawRoutes(location1, location2);
                });

                google.maps.event.addListener(marker2, 'dragend', function () {
                    location2 = marker2.getPosition();
                    drawRoutes(location1, location2);
                });

                // initialize directions service
                directionsService = new google.maps.DirectionsService();
                directionsDisplay = new google.maps.DirectionsRenderer(
		        {
		            suppressMarkers: true,
		            suppressInfoWindows: true
		        });

                directionsDisplay.setMap(map);

                drawRoutes(location1, location2);
            }

            function drawRoutes(location1, location2) {
                // show new addresses

                geocoder = new google.maps.Geocoder(); // creating a new geocode object

                if (geocoder) {
                    geocoder.geocode({ 'latLng': location1 }, function (results, status) {
                        if (status == google.maps.GeocoderStatus.OK) {
                            if (results[0]) {
                                address1 = results[0].formatted_address;
                                document.getElementById("address1").value = address1;
                            }
                        }
                        else {
                            alert("Geocoder failed due to: " + status);
                        }
                    });
                }

                if (geocoder) {
                    geocoder.geocode({ 'latLng': location2 }, function (results, status) {
                        if (status == google.maps.GeocoderStatus.OK) {
                            if (results[0]) {
                                address2 = results[0].formatted_address;
                                document.getElementById("address2").value = address2;
                                continueShowRoute(location1, location2);
                            }
                        }
                        else {
                            alert("Geocoder failed due to: " + status);
                        }
                    });
                }
            }

            function continueShowRoute(location1, location2) {
                // hide last line
                if (line) {
                    line.setMap(null);
                }

                // show a line between the two points
                line = new google.maps.Polyline({
                    map: map,
                    path: [location1, location2],
                    strokeWeight: 7,
                    strokeOpacity: 0.8,
                    strokeColor: "#FFAA00"
                });

                // compute distance between the two points
                var R = 6371;
                var dLat = toRad(location2.lat() - location1.lat());
                var dLon = toRad(location2.lng() - location1.lng());

                var dLat1 = toRad(location1.lat());
                var dLat2 = toRad(location2.lat());

                var a = Math.sin(dLat / 2) * Math.sin(dLat / 2) +
				        Math.cos(dLat1) * Math.cos(dLat1) *
				        Math.sin(dLon / 2) * Math.sin(dLon / 2);
                var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
                var d = R * c;

                document.getElementById("distance_direct").innerHTML = "<br/>The distance between the two points (in a straight line) is: " + d;

                var travelmode = document.getElementById("travelMode").value;

                // get the selected travel mode
                if (travelmode == "driving")
                    travel = google.maps.DirectionsTravelMode.DRIVING;
                else if (travelmode == "walking")
                    travel = google.maps.DirectionsTravelMode.WALKING;
                else if (travelmode == "bicycling")
                    travel = google.maps.DirectionsTravelMode.BICYCLING;

                // find and show route between the points
                var request = {
                    origin: location1,
                    destination: location2,
                    travelMode: travel
                };
                directionsService.route(request, function (response, status) {
                    if (status == google.maps.DirectionsStatus.OK) {
                        directionsDisplay.setDirections(response);
                        distance = "The distance between the two points on the chosen route is: " + response.routes[0].legs[0].distance.text;
                        distance += "<br/>The aproximative " + travelmode + " time is: " + response.routes[0].legs[0].duration.text;
                        document.getElementById("distance_road").innerHTML = distance;
                    }
                    else {
                        alert('error: ' + status);
                    }
                });

                // update text in infowindows
                var text1 = '<div id="content">' +
				        '<h1 id="firstHeading">First location</h1>' +
				        '<div id="bodyContent">' +
				        '<p>Coordinates: ' + location1 + '</p>' +
				        '<p>Address: ' + address1 + '</p>' +
				        '</div>' +
				        '</div>';

                var text2 = '<div id="content">' +
			        '<h1 id="firstHeading">Second location</h1>' +
			        '<div id="bodyContent">' +
			        '<p>Coordinates: ' + location2 + '</p>' +
			        '<p>Address: ' + address2 + '</p>' +
			        '</div>' +
			        '</div>';

                infowindow1.setContent(text1);
                infowindow2.setContent(text2);
            }

            function toRad(deg) {
                return deg * Math.PI / 180;
            }
        </script>
    <style type="text/css">
        .style1
        {
            width: 139px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="form" style="width:100%; height:25%">
		<input id="maptype" type="hidden" value="roadmap"/>
		<table align="center" valign="center">
			<tr>
				<td colspan="7" align="center"><b>Find the distance between two locations</b></td>
			</tr>
			<tr>
				<td colspan="7">&nbsp;</td>
			</tr>
			<tr>
				<td class="style1">First address:</td>
				<td>&nbsp;</td>
				<td><input type="text" name="address1" id="address1" size="50"/></td>
				<td>&nbsp;</td>
				<td>Second address:</td>
				<td>&nbsp;</td>
				<td><input type="text" name="address2" id="address2" size="50"/></td>
			</tr>
			<tr>
				<td class="style1">Route type: 
					<select id="travelMode" name="travelMode">
						<option value="driving">driving</option> 
						<option value="walking">walking</option> 
						<option value="bicycling">bicycling (only in US)</option> 
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="7">&nbsp;</td>
			</tr>
			<tr>
				<td colspan="7" align="center"><input type="button" value="Show" onClick="initialize();"/></td>
			</tr>
		</table>
	</div>
	<center><div style="width:100%; height:10%" id="distance_direct"></div></center>
	<center><div style="width:100%; height:10%" id="distance_road"></div></center>

	<center><div id="map_canvas" style="width:70%; height:54%"></div></center>
</asp:Content>

