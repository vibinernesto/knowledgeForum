<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head></head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>CES CAB MAP ROUTE</title>
<div id="searchBar">
	<font color=""><h4>Select CAB Route :</h4></font> <select id="root_name">
		<option id="t1" value="Mugapeir">Mugapeir</option>
		<option id="t2" value="Koyembedu">Koyembedu</option>
		<option id="t3" value="Villivakam">Villivakam</option>
	</select>
</div>
<div id="pickups">

</div>
<input type="submit" value="submit" onClick="maptest()">
<script
	src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
<script>
/**/
//var map;
var cesCenter = new google.maps.LatLng(12.8470491,80.2162886);
function initialize() {
  var cesNavallur ={
		  zoom:11,
		  center : cesCenter, //new google.maps.LatLng(12.8470491,80.2162886),
		  mapTypeId:google.maps.MapTypeId.ROADMAP
  };
  var marker=new google.maps.Marker({
	  position:cesCenter,
	  });
 var map0 = new google.maps.Map(document.getElementById('map-canvas'), //'map-canvas'
		  cesNavallur);
  marker.setMap(map0);
  
  var infowindow = new google.maps.InfoWindow({
	  content:"Hello World!"
	  });

	infowindow.open(map0,marker);
  return cesNavallur;

}
function maptest(id){
	var e = document.getElementById("root_name");
	var strUser = e.options[e.selectedIndex].text;
	if(strUser =="Mugapeir")
	{
	var stavanger = new google.maps.LatLng(12.9860907,80.2585398);
	var amsterdam = new google.maps.LatLng(12.8993824,80.1953798);
	var ambrosia =  new google.maps.LatLng(12.8770223,80.2194318);
	var london = new google.maps.LatLng(12.8422167,80.2256891);
	var myTrip=[stavanger,amsterdam,ambrosia,london];
	var flightPath=new google.maps.Polyline({
	  path:myTrip,
	  strokeColor:"#0000FF",
	  strokeOpacity:1.0,
	  strokeWeight:2
	  });
	var cesNavallur = initialize();
	 Mugapeir = new google.maps.Map(document.getElementById('map-canvas'), //'map-canvas'
			  cesNavallur);
	flightPath.setMap(Mugapeir);
	}
  if(strUser =="Koyembedu")
		{
		var mambakkam = new google.maps.LatLng(12.7829627,80.2091629);
		var vandalur = new google.maps.LatLng(12.8922137,80.0906522);
		var navalur = new google.maps.LatLng(12.8445713,80.2289683);
		var newTrip=[mambakkam,vandalur,navalur];
		var newpath=new google.maps.Polyline({
		  path:newTrip,
		  strokeColor:"#0000FF",
		  strokeOpacity:1.0,
		  strokeWeight:2
		  });
		var cesNavallur = initialize();
		Villivakam = new google.maps.Map(document.getElementById('map-canvas'), //'map-canvas'
				  cesNavallur);
		newpath.setMap(Villivakam);
		}
  if(strUser =="Villivakam")
	{
	var vilivakam = new google.maps.LatLng(13.1105975,80.1939406);
	var arumbakaam = new google.maps.LatLng(13.0704694,80.2115788);
	var Tnagar = new google.maps.LatLng(13.0450516,80.2324571);
	var Ces = new google.maps.LatLng(12.8419891,80.2248879);
	var newTrip=[vilivakam,arumbakaam,Tnagar,Ces];
	var newpath=new google.maps.Polyline({
	  path:newTrip,
	  strokeColor:"#0000FF",
	  strokeOpacity:1.0,
	  strokeWeight:2
	  });
	var cesNavallur = initialize();
	Villivakam = new google.maps.Map(document.getElementById('map-canvas'), //'map-canvas'
			  cesNavallur);
	newpath.setMap(Villivakam);
	}
}
google.maps.event.addDomListener(window, 'load', initialize);
</script>
<body>
	<div id="map-canvas" style="height: 700px; width: 1332px"></div>
	
</body>
</html>