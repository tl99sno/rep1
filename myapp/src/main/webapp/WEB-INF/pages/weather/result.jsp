<%@ include file="../header.jsp"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<head>
	<title>Current weather</title>
</head>

<body>

	<div class="container">

		<%@ include file="navigationmenu.jsp"%>
		
		<br>
		<div class="panel panel-default">
			<div class="panel-heading">CURRENT WEATHER CONDITIONS FOR ${weather.city}, ${weather.country}</div>
			<div class="panel-body">

				<div class="row">
					<div class="col-lg-4">

						<h5>TEMPERATURES</h5>
						<ul style="list-style-type: circle">
							<li>Temperature: ${weather.temperature} C</li>
							<li>Min: ${weather.temp_min} C</li>
							<li>Max: ${weather.temp_max} C</li>
						</ul>
						<br>

						<h5>WATHER CONDITIONS:</h5>
						<ul style="list-style-type: circle">
							<li>Wind speed: ${weather.windSpeed} m/s</li>
							<li>Wind direction: ${weather.windDirection} deg</li>
							<li>Humidity: ${weather.humidity} %</li>
							<li>Pressure: ${weather.pressure} Bar</li>
							<li>Description: ${weather.description}</li>
							<li><img
								src="http://openweathermap.org/img/w/${weather.icon}.png"
								alt="some_text"></li>
						</ul>
						<br>

						<h5>LOCATION INFO:</h5>
						<ul style="list-style-type: circle">
							<li>Country: ${weather.country}</li>
							<li>City: ${weather.city}</li>
							<li>Longitude: ${weather.longitude}</li>
							<li>Latitude: ${weather.latitude}</li>
						</ul>
						<br>

						<p>
							<a href="${ctx}/weather/select" class="btn btn-default btn-sm">search again <span class="glyphicon glyphicon-search"></span></a>
						</p>
					</div>

					<div class="col-lg-6">
						<img src="${imgurl}" class="thumbnail">
					</div>
			
				</div>
			</div>
		</div>
	</div>

</body>
</html>