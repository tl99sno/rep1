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
			<div class="panel-heading">FOLLOWING DATA SAVED TO PERSON TABLE IN DB.</div>
			<div class="panel-body">
		  		<p>Name: ${person.name}<br>
		  		Surname: ${person.surname}<br>
		  		E-mail: ${person.email}<br>
		  		Phone number: ${person.phoneNumber}</p>
		  		
		  		<p>Country: ${person.address.country}<br>
				City: ${person.address.city}<br>
				Street: ${person.address.street}<br>
		  		Postalcode: ${person.address.postalcode}</p>
				
				<a href="${pageContext.request.contextPath}/person/menu" class="btn btn-default">back</a>
			</div>
			
		</div>
		
		<p class="text-center">
		<a href="/myapp/phones/add">Add</a>|
		<a href="/myapp/phones/view">Dbview</a>|
		<a href="/myapp/phones/showphones">View</a>
		</p>
		<%@ include file="../footer.jsp"%>
	</div>
	
</body>
</html>