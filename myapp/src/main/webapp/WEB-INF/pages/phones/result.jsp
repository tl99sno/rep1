<%@ include file="../header.jsp"%>

<head>
	<title>Some title</title>
</head>

<body>

	<div class="container">

		<!-- 		menu	 -->
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
			<div class="panel-heading">PHONES MENU, WORK I PROGRESS</div>
			<div class="panel-body" id="content">
			
				Model: ${phone.model}<br>
				OS: ${phone.os}<br>
				Description: ${phone.description}<br>
				CPU: ${phone.cpu}<br>
				Image url: ${phone.imageUrl}
			
			<p> <a href="${pageContext.request.contextPath}/phones/menu" class="btn btn-default">back</a> </p>
			
			</div>
		</div>



		<p class="text-center">
		<a href="/myapp/phones/add">Add</a>
		<a href="/myapp/phones/view">Dbview</a>
		<a href="/myapp/phones/showphones">View</a>
		</p>
		<%@ include file="../footer.jsp"%>
	</div>
</body>
</html>
