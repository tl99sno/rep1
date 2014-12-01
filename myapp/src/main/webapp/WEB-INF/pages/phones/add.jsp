<%@ include file="../header.jsp"%>

<head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="../resources/js/hello.js"></script>
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

				<form:form role="form" method="POST" action="save" commandName="phone">
					<div class="col-xs-4">

							<form:label path="model">Phone model name:</form:label>
							<form:input path="model" class="form-control" placeholder="model" />
							<form:errors path="model" cssStyle="color: #ff0000;" />

							<form:label path="os">Operating system (OS):</form:label>
							<form:input path="os" class="form-control" placeholder="os" />
							<form:errors path="os" cssStyle="color: #ff0000;" />

							<form:label path="cpu">Central processing unit(CPU):</form:label>
							<form:input path="cpu" class="form-control" placeholder="cpu" />
							<form:errors path="cpu" cssStyle="color: #ff0000;" />
							
							<form:label path="imageUrl">Image url:</form:label>
							<form:input path="imageUrl" class="form-control" placeholder="imageUrl" />
							<form:errors path="imageUrl" cssStyle="color: #ff0000;" />
							
							<form:label for="comment" path="description">Description</form:label>
  							<form:textarea id="textarea" path="description" class="form-control" rows="4"/>
  							<div id="textarea_feedback"></div>
  							<form:errors path="description" cssStyle="color: #ff0000;"> </form:errors>
  							<br>
						<p> <button type="submit" class="btn btn-info">create</button> </p>
						<p> <a href="${pageContext.request.contextPath}/phones/menu" class="btn btn-default btn-sm">back</a> </p>
					</div>
				</form:form>
				
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
