<%@ include file="../header.jsp"%>

<html>
<head>
	<link rel="icon" href="../../resources/img/leaficon.jpg">
	<link rel="stylesheet" href="../../resources/css/bootstrap.min.css">
	<link rel="stylesheet" href="../../resources/css/justified-nav.css">
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
			<div class="panel-heading">EDIT/UPDATE ADDRESS</div>
			<div class="panel-body">
				<form:form role="form" method="POST" action="${pageContext.request.contextPath}/address/update" commandName="address">
					<div class="col-xs-6">
	
						<div class="form-group">
							<form:input path="id" hidden="true" readonly="true" />
							
							<form:label path="country">Country:</form:label>
							<form:input path="country" class="form-control" />
							<form:errors path="country" cssStyle="color: #ff0000;" /><br>
							
							<form:label path="city">City:</form:label>
							<form:input path="city" class="form-control" />
							<form:errors path="city" cssStyle="color: #ff0000;" /><br>
							
							<form:label path="street">Street:</form:label>
							<form:input path="street" class="form-control" />
							<form:errors path="street" cssStyle="color: #ff0000;" /><br>
							
							<form:label path="postalcode">Postalcode:</form:label>
							<form:input path="postalcode" class="form-control" />
							<form:errors path="postalcode" cssStyle="color: #ff0000;" /><br>
						</div>
						
						
						<button type="submit" class="btn btn-default">update</button>
						<br>
						<br> <a	href="${pageContext.request.contextPath}/address/display" class="btn btn-default">back</a>
					</div>
				</form:form>
			</div>
		</div>
	
	</div>
	
</body>
</html>
