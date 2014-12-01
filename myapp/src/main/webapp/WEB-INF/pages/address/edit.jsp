<%@ include file="../header.jsp"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
<head>
	<link rel="icon" href="../../resources/img/leaficon.jpg">
	<link rel="stylesheet" href="../../resources/css/bootstrap.min.css">
	<link rel="stylesheet" href="../../resources/css/justified-nav.css">
	<title>Some title</title>
</head>

<body>
	
	<div class="container">
	
		<%@ include file="navigationmenu.jsp"%>

		<br>
		<div class="panel panel-default">
			<div class="panel-heading">EDIT/UPDATE ADDRESS</div>
			<div class="panel-body">
				<form:form role="form" method="POST" action="${pageContext.request.contextPath}/address/update" commandName="address">
					<div class="col-xs-4">
	
							<form:input path="id" hidden="true" readonly="true" />
							
							<form:label path="country">Country:</form:label>
							<form:input path="country" class="form-control" />
							<form:errors path="country" cssStyle="color: #ff0000;" />
							
							<form:label path="city">City:</form:label>
							<form:input path="city" class="form-control" />
							<form:errors path="city" cssStyle="color: #ff0000;" />
							
							<form:label path="street">Street:</form:label>
							<form:input path="street" class="form-control" />
							<form:errors path="street" cssStyle="color: #ff0000;" />
							
							<form:label path="postalcode">Postal code:</form:label>
							<form:input path="postalcode" class="form-control" />
							<form:errors path="postalcode" cssStyle="color: #ff0000;" /><br>
						
						<button type="submit" class="btn btn-default btn-sm">update</button>
						<br>
						<br> <a	href="${ctx}/address/display" class="btn btn-default btn-sm">back</a>
					</div>
				</form:form>
			</div>
		</div>
	
	</div>
	
</body>
</html>
