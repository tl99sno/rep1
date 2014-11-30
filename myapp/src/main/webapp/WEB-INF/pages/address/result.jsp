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
				<li class="active"><a href="/myapp/address/menu">address</a></li>
				<li><a href="/myapp/person/menu">person</a></li>
				<li><a href="/myapp/weather/select">weather</a></li>
				<li><a href="/myapp/phones/menu">phones</a></li>
				<li><a href="#">about</a></li>
			</ul>
		</div>

		<br>
		<div class="panel panel-default">
			<div class="panel-heading">FOLLOWING DATA SAVEd TO ADDRESS TABLE IN DB</div>
			<div class="panel-body">
				Country: ${address.country}<br>
				City: ${address.city}<br>
				Street: ${address.street}<br>
				${address.postalcode}<br><br>
				
				<a href="${pageContext.request.contextPath}/address/create" class="btn btn-default">create more</a><br><br>
				<a href="${pageContext.request.contextPath}/address/menu" class="btn btn-default">back</a>
			</div>
		</div>
		
		
	
	</div>
	
</body>
</html>