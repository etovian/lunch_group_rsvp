<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html data-ng-app="invitationApp">
<head>

	<link rel="stylesheet" type="text/css" href="resources/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="resources/css/main.css">

	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script src="http://code.angularjs.org/1.1.5/angular.min.js"></script>
	<script type="text/javascript" src="resources/bootstrap/js/bootstrap.min.js"></script>
<!-- 	<script type="text/javascript" src="resources/js/lib/angular-bootstrap.js"></script> -->
	<script type="text/javascript" src="resources/js/app.js"></script>
	<script type="text/javascript" src="resources/js/controllers/InvitationController.js"></script>
	<script type="text/javascript" src="resources/js/services/InvitationService.js"></script>
	<script type="text/javascript" src="resources/js/UiHandler.js"></script>

	<title>RSVP v2!</title>
</head>

<body data-ng-app="invitationApp" data-ng-cloak>

	<div class="navbar">
		<div class="navbar-inner">
			<span class="brand">Event/Invitation Manager</span>
			<ul class="nav">
				<li><a href="#">Review Invitations</a></li>
				<li><a href="#">Admin</a></li>
				<li><a href="#">Locations</a></li>
				<li><a href="#">Events</a></li>
				<li><a href="#">Create Invitations</a></li>
			</ul>
		</div>
	</div>

	<div data-ng-controller="InvitationController">
		<jsp:include page="templates/AddEditInvitationEvent.jsp"></jsp:include>
		<jsp:include page="templates/ViewInvitations.jsp"></jsp:include>
	</div>

	<P>  The time on the server is ${serverTime}. </P>
</body>
</html>
