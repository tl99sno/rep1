<%@ include file="../header.jsp" %>

<html>

<head>
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
			<div class="panel-heading">SAVE DATA ENTERED</div>
			<div class="panel-body">
				<form:form role="form" method="POST" action="result" commandName="person">
					<div class="col-xs-4">
		
						<div class="form-group">
							<form:label path="name">Name:</form:label>
							<form:input path="name" class="form-control" placeholder="name" />
							<form:errors path="name" cssStyle="color: #ff0000;" />
							
							<form:label path="surname">Surname:</form:label>
							<form:input path="surname" class="form-control" placeholder="surname" />
							<form:errors path="surname" cssStyle="color: #ff0000;" />
							
							<form:label path="email">E-mail:</form:label>
							<form:input path="email" class="form-control" placeholder="email" />
							<form:errors path="email" cssStyle="color: #ff0000;" />

							<form:label path="phoneNumber">Phone number:</form:label>
							<form:input path="phoneNumber" class="form-control" placeholder="phoneNumber" />
							<form:errors path="phoneNumber" cssStyle="color: #ff0000;" /><br>
														
							<form:label path="address.id">Country:</form:label>
							<form:input path="address.id" class="form-control" readonly="true" hidden=""/>
												
							<form:label path="address.country">Country:</form:label>
							<form:input path="address.country" class="form-control" readonly="true"/>
		
							<form:label path="address.city">City:</form:label>
							<form:input path="address.city" class="form-control" readonly="true"/>
							
							<form:label path="address.street">Street:</form:label>
							<form:input path="address.street" class="form-control" readonly="true"/>
							
							<form:label path="address.postalcode">Postalcode:</form:label>
							<form:input path="address.postalcode" class="form-control" readonly="true"/>					
																	
						</div>
		
					<br>
					<button type="submit" class="btn btn-info  btn-sm">SAVE&nbsp;<span class="glyphicon glyphicon-ok-sign"></span></button><br><br>
					<a href="${pageContext.request.contextPath}/person/add" class="btn btn-default btn-sm">BACK</a>

					</div>
					
				</form:form>
			</div>
		</div>
	</div>
		
</body>
</html>



