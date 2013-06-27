<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html data-ng-app="demoApp">
<head>

	<link rel="stylesheet" type="text/css" href="resources/bootstrap/css/bootstrap.min.css">
<!-- 	<link rel="stylesheet" type="text/css" href="resources/css/overcast/jquery-ui-1.9.0.custom.min.css">	 -->

	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	
<!-- 	<script type="text/javascript" src="resources/js/angular.js"></script> -->
	<script src="http://code.angularjs.org/1.0.6/angular.min.js"></script>
	<script type="text/javascript" src="resources/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="resources/js/MainHandler.js"></script>

	<title>RSVP</title>
</head>
<body data-ng-controller="HomeController">
	<h1>
		Hello world!  
	</h1>
	
	<P>  The time on the server is ${serverTime}. </P>

	<input id="filter" type="text" data-ng-model="name"> {{ name }}
	<button id="btnAutoFilter" type="button">Auto-Filter</button>
	
	<table class="table table-striped">
		<thead>
			<tr>
				<td>First Name</td>
				<td>Last Name</td>
				<td>Date of Birth</td>
			</tr>
		</thead>
		<tbody>
			<tr data-ng-repeat="person in family | filter:name | orderBy:firstName">
				<td>{{ person.firstName }}</td>
				<td>{{ person.lastName }}</td>
				<td>{{ person.dob }}</td>
			</tr>
		</tbody>
	</table>

	<br/>
	
	<button id="btnAdd" data-ng-click="addFamilyMember();" type="button">Add</button>

</body>
</html>
