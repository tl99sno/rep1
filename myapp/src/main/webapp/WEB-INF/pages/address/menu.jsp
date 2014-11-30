<%@ include file="../header.jsp"%>

<head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="../resources/js/hello.js"></script>
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
			<div class="panel-heading">ADDRESS MANAGEMENT</div>
			<div class="panel-body">
			
				<div class="row" >
					<div class="col-lg-6">
					
						<h3>Address management options</h3>
						<span class="glyphicon glyphicon-pencil"></span> <a href="/myapp/address/create">Create new one</a><br>
						<span class="glyphicon glyphicon-list-alt"></span> <a href="/myapp/address/display">View all</a><br>
						
						<h3>Search by other criterias</h3>
						<span class="glyphicon glyphicon-search"></span> <a href="#getAddressByPathVariable">Pathvariable = Germany</a><br>
						<span class="glyphicon glyphicon-search"></span> <a href="#getAddressByCountry">Country</a><br>
						<span class="glyphicon glyphicon-search"></span> <a href="#getAddressByPostalCode">Postalcode</a><br>
					</div>
					<div class="col-lg-6">
						<h3>REST Service options</h3>
						<span class="glyphicon glyphicon-search"></span> <a href="#getAddress">Get ADDRESS json object with id=5</a><br>
						<span class="glyphicon glyphicon-search"></span> <a href="#getAddresses">Get all ADDRESS objects from db</a><br><br>

						<p>These links are intended for testing of the rest service for fetching
						ADDRESS objects returned as json objects, and will be visible in the textarea
						below when clicked without refreshing the page.</p>
						<p>The clear linke could possibly also be made into a button and be place in
						an appropriate place on this page. And must also solve how to access whole json
						objects in their raw format for display in the textbox?</p>
						<p>Mechanism to pick only available id:s or scroll through them.</p>
					</div>	
				</div></div></div>

		
  		<label for="comment">Fetched json information should appear below</label>
  		<textarea id="jsontextarea" class="form-control" rows="6" > </textarea> <br>

		<a class="btn btn-primary" href="#clear">clear</a><br><br>

		<button type="button" class="btn btn-default btn-sm">
			<span class="glyphicon glyphicon-search"></span> Search
		</button>

		<button type="button" class="btn btn-default btn-xs">
			<span class="glyphicon glyphicon-search"></span> Search
		</button>

		<a href="#"> <span class="glyphicon glyphicon-search"></span>
		</a>
		
		
		<%@ include file="../footer.jsp"%>
	</div>
        				
</body>
</html>

