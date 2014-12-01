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
				<li><a href="/myapp/address/menu">address</a></li>
				<li class="active"><a href="/myapp/person/menu">person</a></li>
				<li><a href="/myapp/weather/select">weather</a></li>
				<li><a href="/myapp/phones/menu">phones</a></li>
				<li><a href="#">about</a></li>
			</ul>
		</div>

		<br>
		<div class="panel panel-default">
			<div class="panel-heading">PERSON MANAGEMENT</div>
			<div class="panel-body">
				<form:form method="POST" commandName="adrs" action="save">
					<table class="table table-hover">
						<caption>Pick one from the existing address to proceed</caption>
						<thead>
							<tr>
								<th>#</th>
								<th>Country</th>
								<th>City</th>
								<th>Street</th>
								<th>Postal code</th>
								<th>-Options-</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="address" items="${addresses}">
								<tr>
									<td><c:out value="${address.id}" /></td>
									<td><c:out value="${address.country}" /></td>
									<td><c:out value="${address.city}" /></td>
									<td><c:out value="${address.street}" /></td>
									<td><c:out value="${address.postalcode}" /></td>
									<td><form:radiobutton path="id" value="${address.id}" />
									<form:errors path="id" cssStyle="color: #ff0000;" />
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<input type="submit" name="submit" value="select address" class="btn btn-default btn-sm" /><br><br>
					<a href="${pageContext.request.contextPath}/person/menu" class="btn btn-default btn-sm">back</a>
				</form:form>
			</div>
		</div>
		
	</div>

</body>
</html>