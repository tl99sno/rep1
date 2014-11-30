<%@ include file="../header.jsp"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<head>
<!-- 	<script>var ctx = "${pageContext.request.contextPath}"</script> -->
	<title>Some title</title>
	<style type="text/css">
		hr {
			margin-top: 2em; margin-bottom: 2em;
			margin-left: 2em; margin-right: 2em;
			border-style: solid; border-width: 1px;
		}
	</style>
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


				<div class="row" id="content">
				
					<c:forEach var="phone" items="${listOfPhones}" varStatus="loop">
						<div class="col-lg-4">
							<h3 class="text-center">${phone.model}</h3>
							<img src="../resources/img/phones/${phone.imageUrl}" class="img-rounded"><br>
							
							<a href="${ctx}/phones/edit/${phone.id}" class="btn btn-default btn-xs">EDIT <span class="glyphicon glyphicon-edit"></span> </a> &nbsp;
							<a href="${ctx}/phones/delete/${phone.id}?from=showphones" class="btn btn-default btn-xs">DELETE <span class="glyphicon glyphicon-remove-sign"></span> </a> <br>
							
							<b>OS:</b> ${phone.os}<br>
							<b>CPU:</b> ${phone.cpu}"<br>
							<b>Description:</b> ${phone.description}
						</div>
						
<%-- 						<c:if test="${not loop.first and loop.index % 3 == 0 }"> --%>
<%-- 							<hr>${loop.index } --%>
<%-- 						</c:if> --%>
						
					</c:forEach>
				
				</div>

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
