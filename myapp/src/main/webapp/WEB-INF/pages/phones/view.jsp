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
				<li><a href="/myapp/person/menu">person</a></li>
				<li><a href="/myapp/weather/select">weather</a></li>
				<li class="active"><a href="/myapp/phones/menu">phones</a></li>
				<li><a href="#">about</a></li>
			</ul>
		</div>


		<br>
		<div class="panel panel-default">
			<div class="panel-heading">EXISTING DATA IN ADDRESS TABLE IN DB</div>
			<div class="panel-body">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>#</th>
							<th>Model</th>
							<th>OS</th>
							<th>CPU</th>
							<th>Image url</th>
							<th>description</th>
							<th>-Options-</th>
						</tr>
					</thead>
					<tbody>

						<c:forEach var="phone" items="${listOfPhones}">
							<tr>
								<td><c:out value="${phone.id}" /></td>
								<td><c:out value="${phone.model}" /></td>
								<td><c:out value="${phone.os}" /></td>
								<td><c:out value="${phone.cpu}" /></td>
								<td><c:out value="${phone.imageUrl}" /></td>
								<td><c:out value="${phone.description}" /></td>
								<td><a href="${pageContext.request.contextPath}/phones/edit/${phone.id}">Edit</a>
									&nbsp; <a href="${pageContext.request.contextPath}/phones/delete/${phone.id}?from=view">Delete</a>
								</td>
							</tr>
						</c:forEach>

					</tbody>

				</table>
				<a href="${pageContext.request.contextPath}/phones/menu" class="btn btn-default btn-sm">back</a>
			</div>

		</div>
				
		<p class="text-center" style="background-color: #f7f7f7">
		<a href="/myapp/phones/add">Add</a>
		<a href="/myapp/phones/view">Dbview</a>
		<a href="/myapp/phones/showphones">View</a>
		</p>
		<%@ include file="../footer.jsp"%>
	</div>

</body>
</html>