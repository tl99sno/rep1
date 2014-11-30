<%@ include file="../header.jsp"%>

<head>
	<title>Some title</title>
</head>

<body>

	<div class="container">

		<div class="masthead">
			<ul class="nav nav-justified">
				<li><a href="/myapp">home</a></li>
				<li><a href="/myapp/address/menu">address</a></li>
				<li><a href="/myapp/person/menu">person</a></li>
				<li class="active"><a href="/myapp/weather/select">weather</a></li>
				<li><a href="/myapp/phones/menu">phones</a></li>
				<li><a href="#">about</a></li>
			</ul>
		</div>

		<br>
		<div class="panel panel-default">
			<div class="panel-heading">Current weather conditions for
				${weather.city}/${weather.country}</div>
			<div class="panel-body">

				<div class="row">
					<div class="col-lg-4">

						<h4>Temperatures</h4>
						<ul style="list-style-type: circle">
							<li>Temperature: ${weather.temperature} C</li>
							<li>Min: ${weather.temp_min} C</li>
							<li>Max: ${weather.temp_max} C</li>
						</ul>
						<br>

						<h4>Weather conditions:</h4>
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

						<h4>Location info:</h4>
						<ul style="list-style-type: circle">
							<li>Country: ${weather.country}</li>
							<li>City: ${weather.city}</li>
							<li>Longitude: ${weather.longitude}</li>
							<li>Latitude: ${weather.latitude}</li>
						</ul>
						<br>

						<p>
							<a href="${pageContext.request.contextPath}/weather/select"
								class="btn btn-default">make new inquiry</a>
						</p>
					</div>

				</div>


			</div>
		</div>
	</div>

</body>
</html>