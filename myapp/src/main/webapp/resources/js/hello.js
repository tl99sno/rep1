$(document).ready(function() {
	$('a[href = "#getAddresses"]').click(function() {
		$.ajax({
			url : "http://localhost:8080/myapp/api/address/get"
		}).then(function(data) {
				document.getElementById("jsontextarea").value = JSON.stringify(data);
		});
	});
});

$(document).ready(function(){
	$('a[href = "#getAddress"]').click(function(){
		$.ajax({
			url: "http://localhost:8080/myapp/api/address/get/5"
		}).then(function(data) {
			document.getElementById("jsontextarea").value = JSON.stringify(data);
		});
	});
});

$(document).ready(function() {
	$('a[href = "#getPersons"]').click(function() {
		$.ajax({
			url : "http://localhost:8080/myapp/api/person/get"
		}).then(function(data) {
				document.getElementById("jsontextarea").value = JSON.stringify(data);
		});
	});
});

$(document).ready(function(){
	$('a[href = "#getPerson"]').click(function(){
		$.ajax({
			url: "http://localhost:8080/myapp/api/person/get/2"
		}).then(function(data) {
			document.getElementById("jsontextarea").value = JSON.stringify(data);
		});
	});
});

$(document).ready(function(){
	$('a[href = "#clear"]').click(function(){
		document.getElementById("jsontextarea").value = '';
	});
});


$(document).ready(function(){
    $("#content").attr("src", "http://feeds.bbci.co.uk/news/rss.xml")});
