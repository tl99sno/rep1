<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>

<head>
	<link rel="icon" href="../../resources/img/leaficon.jpg">
	<link rel="stylesheet" href="../../resources/css/bootstrap.min.css">
	<link rel="stylesheet" href="../../resources/css/justified-nav.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="../../resources/js/hello.js"></script>
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

				<form:form role="form" method="POST" action="${pageContext.request.contextPath}/phones/update" commandName="phone">
					<div class="col-xs-6">

						<div class="form-group">
							<form:input path="id" hidden="true" readonly="true" />
							
							<form:label path="model">Phone model name:</form:label>
							<form:input path="model" class="form-control" placeholder="model" />
							<form:errors path="model" cssStyle="color: #ff0000;" />
							<br>

							<form:label path="os">Operating system (OS):</form:label>
							<form:input path="os" class="form-control" placeholder="os" />
							<form:errors path="os" cssStyle="color: #ff0000;" />
							<br>

							<form:label path="cpu">Central processing unit(CPU):</form:label>
							<form:input path="cpu" class="form-control" placeholder="cpu" />
							<form:errors path="cpu" cssStyle="color: #ff0000;" />
							<br>
							
							<form:label path="imageUrl">Image url:</form:label>
							<form:input path="imageUrl" class="form-control" placeholder="imageUrl" />
							<form:errors path="imageUrl" cssStyle="color: #ff0000;" />
							<br>
							
							<form:label path="description"></form:label>
  							<form:textarea path="description" class="form-control" rows="4"/>
  							<div id="textarea_feedback">rr</div>
  							<form:errors path="description" cssStyle="color: #ff0000;"> </form:errors>
  							
						</div>
						<button type="submit" class="btn btn-info">update</button>
					</div>
				</form:form>
				
			</div>
		</div>

		<%@ include file="../footer.jsp"%>

	</div>
</body>
</html>
