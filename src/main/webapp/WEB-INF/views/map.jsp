<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList, com.safe.vo.Food"%>
<!DOCTYPE html>
<html lang="en">
<%@ include file="banner.jsp"%>
<style>
#map_canvas {
    float: left;
    width: 800px;
    height:750px;
}
</style>
<div class="container-fluid">
	<div class="container place">
		<div class="row">
			<div class="section_top">
				<div class="title_text title_animation active">
					<br> <span class="en"></span>
				<br>	
				
				</div>
			<h1 style="font-family: 'Sunflower', sans-serif;">지 도<img width="60px" height="60px"
							src="resources/img/map.png"></h1>	
	<br>
				<!--//텍스트-->
				<div class="title_serach title_animation active">
					<!--검색창-->
					<input type="text" id="autocomplete" class="form-control input-lg"
						placeholder="장소검색">
				</div>
				<!--/검색창-->
			</div>
		</div>
		<div class="row">
			<div class="col-xs-10">
				<div class="container" id="map_canvas"></div>
			</div>
			<right>
			<div class="col-xs-2">
				<div id="controls">
					<form name="controls">
						<input type="radio" name="type" value="restaurant" onclick="search()" checked="checked" />레스토랑<br /> 
						<input type="radio" name="type" value="hospital" onclick="search()" />병원<br /> 
						<input type="radio" name="type" value="establishment" onclick="search()" />기관, 시설 <br /> 
						<input type="radio" name="type" value="subway_station" onclick="search()" />지하철 <br /> 
						<input type="radio" name="type" value="lodging" onclick="search()" />숙박업소
					</form>
				</div>
			</div>
			<hr>
			<div class="container" id="listing">
				<div class="row" style="overflow:auto; height:600px">
					<table id="results"></table> 
				</div>
			</div>
			</right>
		</div>
	
		
	</div>
</div>
<%@ include file="footer.jsp"%>
<!--지도 스크립트-->
<script type="text/javascript"
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBAj8svZmodVN5BnzWb_zx5DviwVKRqLPU&sensor=false&libraries=places"></script>
<script>
	var map, places, iw;
	var markers = [];
	var autocomplete;
	function initialize() {
		var myLatlng = new google.maps.LatLng(37.501311, 127.037471);
		var myOptions = {
			zoom : 14,
			center : myLatlng,
			mapTypeId : google.maps.MapTypeId.ROADMAP
		};
		map = new google.maps.Map(document.getElementById('map_canvas'),
				myOptions);
		places = new google.maps.places.PlacesService(map);
		google.maps.event.addListener(map, 'tilesloaded', tilesLoaded);
		autocomplete = new google.maps.places.Autocomplete(document
				.getElementById('autocomplete'));
		google.maps.event.addListener(autocomplete, 'place_changed',
				function() {
					showSelectedPlace();
				});
	}
	function tilesLoaded() {
		google.maps.event.clearListeners(map, 'tilesloaded');
		google.maps.event.addListener(map, 'zoom_changed', search);
		google.maps.event.addListener(map, 'dragend', search);
		search();
	}
	function showSelectedPlace() {
		clearResults();
		clearMarkers();
		var place = autocomplete.getPlace();
		map.panTo(place.geometry.location);
		markers[0] = new google.maps.Marker({
			position : place.geometry.location,
			map : map
		});
		iw = new google.maps.InfoWindow({
			content : getIWContent(place)
		});
		iw.open(map, markers[0]);
	}
	function search() {
		var type;
		for (var i = 0; i < document.controls.type.length; i++) {
			if (document.controls.type[i].checked) {
				type = document.controls.type[i].value;
			}
		}
		autocomplete.setBounds(map.getBounds());
		var search = {
			bounds : map.getBounds()
		};
		if (type != 'establishment') {
			search.types = [ type ];
		}
		places.search(search, function(results, status) {
			if (status == google.maps.places.PlacesServiceStatus.OK) {
				clearResults();
				clearMarkers();
				for (var i = 0; i < results.length; i++) {
					markers[i] = new google.maps.Marker({
						position : results[i].geometry.location,
						animation : google.maps.Animation.DROP
					});
					google.maps.event.addListener(markers[i], 'click',
							getDetails(results[i], i));
					setTimeout(dropMarker(i), i * 100);
					addResult(results[i], i);
				}
			}
		});
	}
	function clearMarkers() {
		for (var i = 0; i < markers.length; i++) {
			if (markers[i]) {
				markers[i].setMap(null);
				markers[i] == null;
			}
		}
	}
	function dropMarker(i) {
		return function() {
			markers[i].setMap(map);
		}
	}
	function addResult(result, i) {
		var results = document.getElementById('results');
		var tr = document.createElement('tr');
		tr.style.backgroundColor = (i % 2 == 0 ? '#F0F0F0' : '#FFFFFF');
		tr.onclick = function() {
			google.maps.event.trigger(markers[i], 'click');
		};
		var iconTd = document.createElement('td');
		var nameTd = document.createElement('td');
		var icon = document.createElement('img');
		icon.src = result.icon.replace('http:', '');
		icon.setAttribute('class', 'placeIcon');
		var name = document.createTextNode(result.name);
		iconTd.appendChild(icon);
		nameTd.appendChild(name);
		//tr.appendChild(iconTd);
		tr.appendChild(nameTd);
		results.appendChild(tr);
	}
	function clearResults() {
		var results = document.getElementById('results');
		while (results.childNodes[0]) {
			results.removeChild(results.childNodes[0]);
		}
	}
	function getDetails(result, i) {
		return function() {
			places.getDetails({
				reference : result.reference
			}, showInfoWindow(i));
		}
	}
	function showInfoWindow(i) {
		return function(place, status) {
			if (iw) {
				iw.close();
				iw = null;
			}
			if (status == google.maps.places.PlacesServiceStatus.OK) {
				iw = new google.maps.InfoWindow({
					content : getIWContent(place)
				});
				iw.open(map, markers[i]);
			}
		}
	}
	function getIWContent(place) {
		var content = '<table style="border:0"><tr><td style="border:0;">';
		content += '<img class="placeIcon" src="' + place.icon + '"></td>';
		content += '<td style="border:0;"><b><a href="' + place.url + '">'
				+ place.name + '</a></b>';
		content += '</td></tr></table>';
		return content;
	}
	google.maps.event.addDomListener(window, 'load', initialize);
</script>
</body>
</html>