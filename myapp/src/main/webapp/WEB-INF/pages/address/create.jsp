<%@ include file="../header.jsp"%>

<html>

<head>
	<title>Some title</title>
</head>

<body>

	<div class="container">

		<div class="masthead">
			<ul class="nav nav-justified">
				<li><a href="/myapp">home</a></li>
				<li class="active"><a href="/myapp/address/menu">address</a></li>
				<li><a href="/myapp/person/menu">person</a></li>
				<li><a href="/myapp/weather/select">weather</a></li>
				<li><a href="/myapp/phones/menu">phones</a></li>
				<li><a href="#">about</a></li>
			</ul>
		</div>


		<br>
		<div class="panel panel-default">
			<div class="panel-heading">ADDRESS MANAGEMENT</div>
			<div class="panel-body">
				<form:form role="form" method="POST" action="result"
					commandName="address">
					<div class="col-xs-6">

						<div class="form-group">
							<form:label path="country">Country:</form:label>
							<form:input path="country" class="form-control" placeholder="country name" />
							<form:errors path="country" cssStyle="color: #ff0000;" />
							<br>

							<form:label path="city">City:</form:label>
							<form:input path="city" class="form-control" placeholder="city name" />
							<form:errors path="city" cssStyle="color: #ff0000;" />
							<br>

							<form:label path="street">Street:</form:label>
							<form:input path="street" class="form-control" placeholder="street name" />
							<form:errors path="street" cssStyle="color: #ff0000;" />
							<br>

							<form:label path="postalcode">Postalcode:</form:label>
							<form:input path="postalcode" class="form-control" placeholder="postal code" />
							<form:errors path="postalcode" cssStyle="color: #ff0000;" />
							<br>
						</div>
						<button type="submit" class="btn btn-info">create</button>
					</div>
				</form:form>
			</div>
		</div>
	</div>

</body>
</html>