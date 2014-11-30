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

			<ul>
				<li><a href="/myapp/phones/add">Add new phone</a></li>
				<li><a href="/myapp/phones/showphones">View phones page</a></li>
				<li><a href="/myapp/phones/view">View all Phones in DB</a></li>
				<li><a href="/myapp/phones/test">test</a></li>
				<li><a href="/myapp/weather/search">Search, implement this part with named queries</a></li>
			</ul>				
				
			</div>
		</div>


<!--  <form class="form-horizontal"> -->
<!--     <div class="control-group warning"> -->
<!--       <label class="control-label" for="inputWarning">Input with warning</label> -->
<!--       <div class="controls"> -->
<!--         <input type="text" id="inputWarning"> -->
<!--         <span class="help-inline">Something may have gone wrong</span> -->
<!--       </div> -->
<!--     </div> -->
<!--     <div class="control-group error"> -->
<!--       <label class="control-label" for="inputError">Input with error</label> -->
<!--       <div class="controls"> -->
<!--         <input type="text" id="inputError"> -->
<!--         <span class="help-inline">Please correct the error</span> -->
<!--       </div> -->
<!--     </div> -->
<!--     <div class="control-group info"> -->
<!--       <label class="control-label" for="inputInfo">Input with info</label> -->
<!--       <div class="controls"> -->
<!--         <input type="text" id="inputInfo"> -->
<!--         <span class="help-inline">Username is taken</span> -->
<!--       </div> -->
<!--     </div> -->
<!--     <div class="control-group success"> -->
<!--       <label class="control-label" for="inputSuccess">Input with success</label> -->
<!--       <div class="controls"> -->
<!--         <input type="text" id="inputSuccess"> -->
<!--         <span class="help-inline">Woohoo!</span> -->
<!--       </div> -->
<!--     </div> -->
<!--   </form> -->
  
  
	</div>
</body>
</html>
