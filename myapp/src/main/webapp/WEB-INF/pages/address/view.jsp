<%@ include file="../header.jsp"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>

<head>
	<title>Some title</title>
</head>

<body>

	<div class="container">

		<%@ include file="navigationmenu.jsp"%>

		<br>
		<div class="panel panel-default">
			<div class="panel-heading">EXISTING DATA IN ADDRESS TABLE IN DB</div>
			<div class="panel-body">
				<table class="table table-hover">
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

						<c:forEach var="address" items="${addressList}">
							<tr>
								<td><c:out value="${address.id}" /></td>
								<td><c:out value="${address.country}" /></td>
								<td><c:out value="${address.city}" /></td>
								<td><c:out value="${address.street}" /></td>
								<td><c:out value="${address.postalcode}" /></td>
								<td><a href="${pageContext.request.contextPath}/address/edit/${address.id}">Edit</a>
									&nbsp; <a href="${pageContext.request.contextPath}/address/delete/${address.id}">Delete</a>
								</td>
							</tr>
						</c:forEach>

					</tbody>

				</table>
				<a href="${ctx}/address/menu" class="btn btn-default btn-sm">back</a>
			</div>

		</div>
		<p class="text-center">
		<a href="/myapp/address/menu">MENU</a> |
		<a href="/myapp/address/add">ADD</a>
		</p>
		
	</div>

</body>
</html>