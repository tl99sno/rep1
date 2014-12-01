<%@ include file="../header.jsp"%>

<html>

<head>
	<title>Some title</title>
</head>

<body>

	<div class="container">

		<%@ include file="navigationmenu.jsp"%>

<!-- 		Avståndet här kan sättas i css så man inte bevöver br -->
		<br>
		<div class="panel panel-default">
			<div class="panel-heading">ADDRESS MANAGEMENT</div>
			<div class="panel-body">
				<form:form role="form" method="POST" action="result"
					commandName="address">
					<div class="col-xs-3">

							<form:label path="country">Country:</form:label>
							<form:input path="country" class="form-control" placeholder="country name" />
							<form:errors path="country" cssStyle="color: #ff0000;" />

							<form:label path="city">City:</form:label>
							<form:input path="city" class="form-control" placeholder="city name" />
							<form:errors path="city" cssStyle="color: #ff0000;" />

							<form:label path="street">Street:</form:label>
							<form:input path="street" class="form-control" placeholder="street name" />
							<form:errors path="street" cssStyle="color: #ff0000;" />

							<form:label path="postalcode">Postal code:</form:label>
							<form:input path="postalcode" class="form-control" placeholder="postal code" />
							<form:errors path="postalcode" cssStyle="color: #ff0000;" /><br>

						<button type="submit" class="btn btn-info btn-sm" >save <span class="glyphicon glyphicon-ok-sign"></span></button>
					</div>
				</form:form>
			</div>
		</div>
	</div>

</body>
</html>