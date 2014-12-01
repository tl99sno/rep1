<%@ include file="../header.jsp"%>

<head>
	<style>
	hr {
		margin-top: 2em;
		margin-bottom: 2em;
		margin-left: 1em;
		margin-right: 1em;
		border-style: solid;
		border-width: 1px;
	}
	</style>
	<script src="../resources/js/geocoding.js"></script>
	<title>Current weather</title>
</head>

<body>

	<div class="container">

		<%@ include file="navigationmenu.jsp"%>

		<br>
		<div class="panel panel-default">
			<div class="panel-heading">GET CURRENT WEATHER CONDITIONS BY</div>
			<div class="panel-body">


				<div class="row">

					<div class="col-xs-6">
						<h4>OPEN WEATHER API</h4>
						<p>What this part does is, querying the openweather api by
							city and country. It contacts their REST API which can be used to
							get current weather conditions for any place.</p>
						<p>For test purposes there is also a option made available to
							run the query with old information, from and previously
							downloaded information. Remember to add validation to this page
							as well...</p>
					</div>



					<div class="col-xs-3">
						<form:form method="POST" action="result" commandName="address">

							<h4>COUNTRY AND CITY NAME</h4>

							<form:label path="city">City:</form:label>
							<form:input path="city" class="form-control" placeholder="city" />
							<form:errors path="city" cssStyle="color: #ff0000;" />

							<form:label path="country">Country:</form:label>
							<form:input path="country" class="form-control" placeholder="country" />
							<form:errors path="country" cssStyle="color: #ff0000;" />
							<br>

							<button type="submit" class="btn btn-info btn-sm">weather</button>
							<br>

						</form:form>
					</div>
				</div>

				<hr>

				<div class="row">

					<div class="col-xs-6">
						<h4>CURRENT WEATHER BASED ON COORDINATES</h4>
						<p>When using this option your browser will use a HTML 5 API
							feature that allow the browser to access the users
							geocoordinates, which is your current locations longitude and
							latitude. A warning might come up in your browser asking you "if
							you allow your browser to access your current location. For this
							to method to work, the user must allow the browser to gain access
							to this information.</p>
							
						<p></p>
						<p></p>
						<p></p>
					</div>

					<div class="col-xs-3">
						<h4>YOUR GEOCOORDINATES</h4>
						<form:form method="POST" action="result1" commandName="address"	id="weatherForm">
						
							<form:label path="latitude">Latitude:</form:label>
							<form:input path="latitude" class="form-control" id="latitude" />

							<form:label path="longitude">Longitude:</form:label>
							<form:input path="longitude" class="form-control" id="longitude" />
							<br>

							<form:input path="imgUrl" id="imgurl" hidden="true"/>
							
							<button type="button" onclick="getCoordinates()" class="btn btn-info btn-sm">coordinates</button>
							<button type="button" onclick="getLocation()" class="btn btn-info btn-sm">weather</button>
							
							<br>
						</form:form>
					</div>
				</div>

				<hr>

				<div class="row">

					<div class="col-xs-6">
						<h4>LEFT HERE FOR TESTING</h4>
						<p>Thi has been left here for testing some parts of the
							functionallity. Reads some old json stored locally parses and
							displays the information. No data is fetched from the internet.</p>
					</div>

					<div class="col-xs-4">
						<h4>PARSING TEST JSON</h4>
						<a
							href="${pageContext.request.contextPath}/weather/getweatherdummy" class="btn btn-default btn-sm">test</a>
					</div>
				</div>

			</div>
		</div>
		<%@ include file="../footer.jsp"%>
	</div>
</body>

</html>