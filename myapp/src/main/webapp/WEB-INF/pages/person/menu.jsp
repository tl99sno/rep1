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

				<div class="row">
					<div class="col-lg-6">
						<h3>Person management options</h3>
						<span class="glyphicon glyphicon-pencil"></span> <a href="/myapp/person/create">Create new one</a><br>
						<span class="glyphicon glyphicon-list-alt"></span> <a href="/myapp/person/display">View all</a><br>
						<span class="glyphicon glyphicon-search"></span> <a href="#">Search by different criterias (to be implemented)</a><br>
					</div>

					<div class="col-lg-6">
						<h3>REST Service options</h3>
						<span class="glyphicon glyphicon-search"></span> <a href=#getPerson>Get person with id=2</a><br>
						<span class="glyphicon glyphicon-search"></span> <a href="#getPersons">Get all persons</a><br>
					</div>
				</div>
		</div></div>


		<div class="form-group">
			<label for="comment">Fetched json information should appear below</label>
			<textarea id="jsontextarea" class="form-control" rows="5"></textarea>
		</div>

		<a class="btn btn-primary" href="#clear">clear</a>
		
		<div class="footer">
			<p>&copy; Company 2014</p>
		</div>

	</div>
</body>
</html>
