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
			<div class="panel-heading">FOLLOWING DATA SAVED TO ADDRESS TABLE IN DB</div>
			<div class="panel-body">
				Country: ${address.country}<br>
				City: ${address.city}<br>
				Street: ${address.street}<br>
				${address.postalcode}<br><br>
				
				<a href="${ctx}/address/create" class="btn btn-default btn-sm">create more</a><br><br>
				<a href="${ctx}/address/menu" class="btn btn-default btn-sm">back</a>
			</div>
		</div>
		
		
	
	</div>
	
</body>
</html>