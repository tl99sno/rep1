var x = document.getElementById("demo");

function getCoordinates() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(setCoordinates, showError);
    } else {
        x.innerHTML = "Geolocation is not supported by this browser.";
    }
}

function setCoordinates(position) {
	var lat = position.coords.latitude;
    var lon = position.coords.longitude;
    document.getElementById("latitude").value = lat;
    document.getElementById("longitude").value = lon;
}


function getLocation() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(submitForm, showError);
    } else {
        x.innerHTML = "Geolocation is not supported by this browser.";
    }
}

function submitForm(position) { 

	var lat;
	var lon;
	var latlon;
	var latitude_field = document.getElementById("latitude").value; 
	var longitude_field = document.getElementById("longitude").value;
	
	if (latitude_field !== '' || longitude_field !== '') {
		latlon = latitude_field + "," + longitude_field;
		var img_url = "http://maps.googleapis.com/maps/api/staticmap?center=" +latlon + "&zoom=15&size=600x500&maptype=roadmap&markers=color:blue%7Clabel:A%7C" + latlon;
	    document.getElementById("imgurl").value = img_url;
	    document.getElementById("weatherForm").submit();
	}
	else {
		lat = position.coords.latitude;
	    lon = position.coords.longitude;
	    var latlon = lat + "," + lon;
	    var img_url = "http://maps.googleapis.com/maps/api/staticmap?center=" +latlon + "&zoom=15&size=600x500&maptype=roadmap&markers=color:blue%7Clabel:A%7C" + latlon;
	    document.getElementById("latitude").value = lat;
	    document.getElementById("longitude").value = lon;
	    document.getElementById("imgurl").value = img_url;
	    document.getElementById("weatherForm").submit();
	}
}

function showError(error) {
    switch(error.code) {
        case error.PERMISSION_DENIED:
            x.innerHTML = "User denied the request for Geolocation."
            break;
        case error.POSITION_UNAVAILABLE:
            x.innerHTML = "Location information is unavailable."
            break;
        case error.TIMEOUT:
            x.innerHTML = "The request to get user location timed out."
            break;
        case error.UNKNOWN_ERROR:
            x.innerHTML = "An unknown error occurred."
            break;
    }
}