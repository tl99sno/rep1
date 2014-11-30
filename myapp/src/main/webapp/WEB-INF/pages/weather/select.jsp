<%@ include file="../header.jsp"%>

<head>
	<style>
	hr { 
	    margin-top: 3em; margin-bottom: 3em; 
	    border-style: solid; border-width: 1px;
	}
	
	img { 
	    margin-top: 3em; margin-bottom: 1em; 
 	    padding-right: 20%;
 		padding-left: 20%;
	}  
	</style>
<!-- 	<script src="../../resources/js/geocoordinates.js"></script> -->
	<script src="../resources/js/geocoordinates.js"></script>
	<title>Current weather</title>
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


					
					<div class="col-xs-4">
						<form:form method="POST" action="result" commandName="address">

							<h4>COUNTRY AND CITY NAME</h4>

							<form:label path="city">City:</form:label>
							<form:input path="city" class="form-control" placeholder="city" />
							<form:errors path="city" cssStyle="color: #ff0000;" /><br>

							<form:label path="country">Country:</form:label>
							<form:input path="country" class="form-control" placeholder="country" />
							<form:errors path="country" cssStyle="color: #ff0000;" /><br>

							<button type="submit" class="btn btn-info">get</button>
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
					</div>
					
					<div class="col-xs-4">
						<h4>YOUR GEOCOORDINATES</h4>
						<form:form method="POST" action="result1" commandName="address" id="myForm">
							<form:label path="latitude">Latitude:</form:label>
							<form:input path="latitude" class="form-control" id="latitude" value="52.495086300000004"/>
							<br>

							<form:label path="longitude">Longitude:</form:label>
							<form:input path="longitude" class="form-control" id="longitude" value="13.3571218"/><br>
							
							<button type="button" onclick="showlocation()" class="btn btn-info">get coordinates</button>
							<button type="button" onclick="method()" class="btn btn-info">get map</button>
							<button type="submit" class="btn btn-info">get weather</button>
							
							<br>
						</form:form>

						
					</div>					
				</div>

				<div class="row">
					<img id=map onclick="changeImage()">
				</div>
				<hr>
				
				<div class="row">
					
					<div class="col-xs-6">
						<h4>LEFT HERE FOR TESTING</h4>
						<p>Thi has been left here for testing some parts of the functionallity. Reads some old json stored locally parses and displays the information.
						No data is fetched from the internet.</p>
					</div>
					
					<div class="col-xs-4">
						<h4>PARSING TEST JSON</h4>
						<a href="${pageContext.request.contextPath}/weather/getweatherdummy" class="btn btn-default">test</a>
					</div>
				</div>
				
				
			</div>
		</div>
		<%@ include file="../footer.jsp"%>
	</div>

	
</body>

</html>