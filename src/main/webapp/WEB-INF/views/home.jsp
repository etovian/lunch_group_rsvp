<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html data-ng-app="invitationApp">
<head>

	<link rel="stylesheet" type="text/css" href="resources/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="resources/css/main.css">

	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script src="http://code.angularjs.org/1.1.5/angular.min.js"></script>
	<script type="text/javascript" src="resources/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="resources/js/controllers/InvitationController.js"></script>
	<script type="text/javascript" src="resources/js/services/InvitationService.js"></script>
	<script type="text/javascript" src="resources/js/MainHandler.js"></script>

	<title>RSVP</title>
</head>

<body data-ng-controller="InvitationController" data-ng-cloak>

	<div class="navbar">
<!-- 	<div class="navbar navbar-fixed-top"> -->
		<div class="navbar-inner">
<!-- 		<div class="navbar-inner" data-spy="affix"> -->
			<span class="brand">Event/Invitation Manager</span>
			<ul class="nav">
				<li><a href="#">Admin</a></li>
				<li><a href="#">Locations</a></li>
				<li><a href="#">Events</a></li>
				<li><a href="#">Invitations</a></li>
			</ul>
		</div>
	</div>

	<div class="content">

		<div id="viewYourInvitations">
			<div class="row">
				<div class="span8">
					<table id="tblInvitations" class="table stripedTable">
						<thead>
							<tr>
								<td>Title</td>
								<td>Events</td>
								<td>Invitees</td>
								<td>Created</td>
								<td>Sent</td>
							</tr>
						</thead>
						<tbody>
							<tr data-ng-repeat="invitation in invitations" data-ng-click="selectInvitation($event, invitation);">
								<td>{{invitation.title}}</td>
								<td>{{invitation.events.length}}</td>
								<td>{{invitation.invitees.length}}</td>
								<td>{{invitation.created}}</td>
								<td>{{invitation.sent}}</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			
			<div class="row">
				<div class="span10">
					<div data-ng-hide="!selectedInvitation">
						<h2>Events for {{selectedInvitation.title}}</h2>
						<table id="tblInvitationEvents" class="table">
							<thead>
								<tr>
									<td>Title</td>
									<td>Location</td>
									<td>Address</td>
									<td>Start</td>
									<td>End</td>
								</tr>
							</thead>
							<tbody>
								<tr data-ng-repeat="event in selectedInvitation.events | orderBy:eventSortOrder">
									<td>{{event.title}}</td>
									<td>{{event.location.name}}</td>
									<td>{{event.location.streetAddress}} <br/> {{event.location.city}}, {{event.location.zip}}</td>
									<td>{{event.startTime | date:'short'}}</td>
									<td>{{event.endTime | date:'shortTime'}}</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			
		</div>
		
		<div class="row">
			<div class="span6">
					<div data-ng-hide="!selectedInvitation">
						<h2>Invitees for {{selectedInvitation.title}}</h2>
						<table id="tblInvitees" class="table">
							<thead>
								<tr>
									<td>Name</td>
									<td>Email Address</td>
								</tr>
							</thead>
							<tbody>
								<tr data-ng-repeat="invitee in selectedInvitation.invitees | orderBy:inviteeSortOrder">
									<td>{{invitee.firstName}} {{invitee.lastName}}</td>
									<td>{{invitee.emailAddress}}</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<P>  The time on the server is ${serverTime}. </P>
</body>
</html>
