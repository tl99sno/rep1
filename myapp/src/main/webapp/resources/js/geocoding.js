var x = document.getElementById("lat");
var y = document.getElementById("lon");

function getLocation() {
	if (navigator.geolocation) {
		navigator.geolocation.getCurrentPosition(showPosition);
	} else {
		x.innerHTML = "Geolocation is not supported by this browser.";
	}
}

function showPosition(position) {
	x.innerHTML = "Latitude: " + position.coords.latitude;
	y.innerHTML = "Longitude: " + position.coords.longitude;
}



$(document).ready(function(){
	$('a[href = "#getAddress"]').click(function(){
		$.ajax({
			url: "http://localhost:8080/myapp/api/address/get/5"
		}).then(function(data) {
			document.getElementById("jsontextarea").value = JSON.stringify(data);
		});
	});
});