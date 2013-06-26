<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html data-ng-app="demoApp">
<head>

	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script type="text/javascript" src="resources/js/angular.js"></script>
	<script type="text/javascript" src="resources/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="resources/js/MainHandler.js"></script>

	<title>Home</title>
</head>
<body data-ng-controller="HomeController">
	<h1>
		Hello world!  
	</h1>
	
	<P>  The time on the server is ${serverTime}. </P>

	<input type="text" data-ng-model="name"> {{ name }}
	
	<ul>
		<li data-ng-repeat="person in family | filter:name | orderBy:firstName">
			{{ person.firstName }} {{ person.lastName }}, {{ person.dob }}
		</li>
	</ul>

</body>
</html>
