<%@ include file="../header.jsp"%>

<html>

<head>
	<link rel="stylesheet" href="/myapp/resources/css/bootstrap.min.css">
	<link rel="stylesheet" href="/myapp/resources/css/justified-nav.css">
	<title>Some title</title>
</head>

<body>

	<div class="container">

		<div class="masthead">
			<ul class="nav nav-justified">
				<li><a href="/myapp">home</a></li>
				<li><a href="/myapp/address/menu">address</a></li>
				<li class="active"><a href="/myapp/person/menu">person</a></li>
				<li><a href="/myapp/weather/select">weather</a></li>
				<li><a href="/myapp/phones/menu">phones</a></li>
				<li><a href="#">about</a></li>
			</ul>
		</div>


		<br>
		<div class="panel panel-default">
			<div class="panel-heading">EDIT PERSON</div>
			<div class="panel-body">
				<form:form role="form" method="POST"
					action="${pageContext.request.contextPath}/person/update" commandName="person">
					<div class="col-xs-6">

						<div class="form-group">
							<form:input path="id" hidden="true" readonly="true" />
						
							<form:label path="name">Name:</form:label>
							<form:input path="name" class="form-control" placeholder="name" />
							<form:errors path="name" cssStyle="color: #ff0000;" /><br>
							
							<form:label path="surname">Surname:</form:label>
							<form:input path="surname" class="form-control" placeholder="surname" />
							<form:errors path="surname" cssStyle="color: #ff0000;" /><br>
							
							<form:label path="email">E-mail:</form:label>
							<form:input path="email" class="form-control" placeholder="email" />
							<form:errors path="email" cssStyle="color: #ff0000;" /><br>

							<form:label path="phoneNumber">Phone number:</form:label>
							<form:input path="phoneNumber" class="form-control" placeholder="phoneNumber" />
							<form:errors path="phoneNumber" cssStyle="color: #ff0000;" /><br>

							<form:input path="address.id" hidden="true" readonly="true" />

							<form:label path="address.country">Country:</form:label>
							<form:input path="address.country" class="form-control" readonly="true" />

							<form:label path="address.city">City:</form:label>
							<form:input path="address.city" class="form-control" readonly="true" />

							<form:label path="address.street">Street:</form:label>
							<form:input path="address.street" class="form-control" readonly="true" />

							<form:label path="address.postalcode">Postalcode:</form:label>
							<form:input path="address.postalcode" class="form-control" readonly="true" />
						</div>
						<button type="submit" class="btn btn-default btn-sm">Save</button>
						
						<br><br> 
						<a href="${pageContext.request.contextPath}/person/menu" class="btn btn-default btn-sm">back</a>
					</div>

				</form:form>
			</div>
		</div>
	</div>

</body>
</html>



