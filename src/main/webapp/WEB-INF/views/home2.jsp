<!-- without the following line, bootstrap css oddly renders text inputs -->
<!DOCTYPE HTML>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html data-ng-app="invitationApp">
<head>

	<link rel="stylesheet" type="text/css" href="resources/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="resources/css/main.css">

	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script src="http://code.angularjs.org/1.1.5/angular.min.js"></script>
	<script type="text/javascript" src="resources/js/lib/underscore.js"></script>
	<script type="text/javascript" src="resources/js/lib/jquery-class.js"></script>
	<script type="text/javascript" src="resources/js/lib/RequestHandler.js"></script>
	<script type="text/javascript" src="resources/js/lib/ResponseHandler.js"></script>
	<script type="text/javascript" src="resources/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="resources/js/directives/Selectable.js"></script>
	<script type="text/javascript" src="resources/js/app.js"></script>
	<script type="text/javascript" src="resources/js/controllers/InvitationController.js"></script>
	<script type="text/javascript" src="resources/js/services/InvitationService.js"></script>
	<script type="text/javascript" src="resources/js/UiHandler.js"></script>

	<title>RSVP v2!</title>
</head>

<body data-ng-app="invitationApp" data-ng-cloak>

	<div data-ng-controller="InvitationController">

		<div class="navbar">
			<div class="navbar-inner">
				<span class="brand">Event/Invitation Manager</span>
				<ul class="nav">
					<li><button 
						data-ng-click="ui.showPane('showInvitationPane');" 
						class="btn btn-link"
						type="button">Review Invitations</button>
					</li>
					<li>
						<button 
							class="btn btn-link" 
							type="button">Admin</button>
					</li>
					<li>
						<button 
							data-ng-click="ui.showPane('showLocationPane');" 
							class="btn btn-link" 
							type="button">Locations</button></li>
					<li><button 
						class="btn btn-link" 
						type="button">Events</button>
					</li>
					<li>
						<button 
							class="btn btn-link" 
							type="button">Create Invitations</button></li>
				</ul>
			</div>
		</div>
	
		<div data-ng-show="ui.showInvitationPane">
			<jsp:include page="templates/ViewInvitations.jsp"></jsp:include>
			<jsp:include page="templates/AddEditInvitationEvent.jsp"></jsp:include>
			<jsp:include page="templates/UserLookup.jsp"></jsp:include>
		</div>
		<div data-ng-show="ui.showLocationPane">
			<jsp:include page="templates/ManageLocations.jsp"></jsp:include>
		</div>
		
		<div id="messageFrame">
			<div 
				data-ng-repeat="message in messages" 
				data-ng-animate="'fade'" 
				class="alert {{message.style}} shadow">
				<h3>{{ message.title }}</h3>
				<p>{{ message.text }}</p>
			</div>
		</div>
	</div>

	<P>  The time on the server is ${serverTime}. </P>
</body>
</html>
