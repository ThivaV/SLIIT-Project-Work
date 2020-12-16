<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EPISendAlerts.aspx.cs" Inherits="EPISendAlerts" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
    <script type="text/javascript">

        var map;
        function initialize() {
            var mapDiv = document.getElementById('map-canvas');
            map = new google.maps.Map(mapDiv, {
                center: new google.maps.LatLng(6.915861397925949, 79.84824657440186), //37.4419, -122.1419
                zoom: 13,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            });

            google.maps.event.addListenerOnce(map, 'tilesloaded', addMarkers);
        }

        function addMarkers() {
            var bounds = map.getBounds();
            var southWest = bounds.getSouthWest();
            var northEast = bounds.getNorthEast();
            var lngSpan = northEast.lng() - southWest.lng();
            var latSpan = northEast.lat() - southWest.lat();
            for (var i = 0; i < 5; i++) {
                var latLng = new google.maps.LatLng(southWest.lat() + latSpan * Math.random(),
                                              southWest.lng() + lngSpan * Math.random());
                var marker = new google.maps.Marker({
                    position: latLng,
                    map: map
                });
            }
        }
        google.maps.event.addDomListener(window, 'load', initialize);
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div id="map-canvas" style="width: 1200px; height: 500px"></div>
    </div>
    </form>
</body>
</html>
