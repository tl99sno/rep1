<%@ include file="../header.jsp"%>

<html>

<head>
	<title>Myapp</title>
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
			<table class="table table-hover">
				<thead>
					<tr>
<!-- 						<th>#</th> -->
						<th>Name</th>
						<th>Surname</th>
						<th>E-mail</th>
						<th>Phone number</th>
						<th>Country</th>
						<th>City</th>
						<th>Street</th>
						<th>Postal code</th>
						<th>-Options-</th>
					</tr>
				</thead>
				<tbody>

					<c:forEach var="person" items="${personlist}">
						<tr>
<%-- 							<td><c:out value="${person.id}" /></td> --%>
							<td><c:out value="${person.name}" /></td>
							<td><c:out value="${person.surname}" /></td>
							<td><c:out value="${person.email}" /></td>
							<td><c:out value="${person.phoneNumber}" /></td>
							<td><c:out value="${person.address.country}" /></td>
							<td><c:out value="${person.address.city}" /></td>
							<td><c:out value="${person.address.street}" /></td>
							<td><c:out value="${person.address.postalcode}" /></td>
							<td><a href="${pageContext.request.contextPath}/person/edit/${person.id}">Edit</a> &nbsp;
								<a href="${pageContext.request.contextPath}/person/delete/${person.id}">Delete</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<a href="${pageContext.request.contextPath}/person/menu" class="btn btn-default" >back</a>
			</div>
		</div>
		
		<p class="text-center">
		<a href="/myapp/person/menu">menu</a> |
		<a href="/myapp/person/create">add</a> |
		<a href="/myapp/person/display">dbview</a>
		</p>
	</div>	
	
</body>
</html>