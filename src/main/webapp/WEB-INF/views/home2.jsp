<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html data-ng-app="invitationApp">
<head>

	<link rel="stylesheet" type="text/css" href="resources/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="resources/css/main.css">

	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script src="http://code.angularjs.org/1.1.5/angular.min.js"></script>
	<script type="text/javascript" src="resources/bootstrap/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="resources/js/lib/angular-bootstrap.js"></script>
	<script type="text/javascript" src="resources/js/controllers/InvitationController.js"></script>
	<script type="text/javascript" src="resources/js/services/InvitationService.js"></script>
	<script type="text/javascript" src="resources/js/MainHandler.js"></script>

	<title>RSVP v2!</title>
</head>

<body data-ng-controller="InvitationController" data-ng-cloak>

	<div class="navbar">
		<div class="navbar-inner">
			<span class="brand">Event/Invitation Manager</span>
			<ul class="nav">
				<li><a href="#">Admin</a></li>
				<li><a href="#">Locations</a></li>
				<li><a href="#">Events</a></li>
				<li><a href="#">Invitations</a></li>
			</ul>
		</div>
	</div>

	<div>

		<div id="viewYourInvitations">
			<div class="row">
				<div class="span4"><h3>Invitations ({{invitations.length}})</h3></div>
			</div>
			<div class="row">
				<div class="span4">
					<div class="invitation-scroller">
						<div class="tile" data-ng-repeat="invitation in invitations" data-ng-click="selectInvitation($event, invitation);">
							<h4>{{invitation.title}}</h4>
							<p>Events: {{invitation.events.length}}</p>
							<p>Invitees: {{invitation.invitees.length}}</p>
							<p>Created: {{invitation.created}}</p>
							<p>Sent: {{invitation.sent}}</p>
						</div>
					</div>
				</div>
				<div class="span8">
					<div class="row">
						<div class="span8">
							<div data-ng-hide="!selectedInvitation" data-ng-animate="'fade'" class="tile">
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
						<div class="span8">
							<div data-ng-hide="!selectedInvitation"  data-ng-animate="'fade'" class="tile">
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
		
		<div class="row">
			<div class="span6">
					<div data-ng-hide="!selectedInvitation"  data-ng-animate="'fade'">
						
					</div>
				</div>
			</div>
		</div>
	</div>
	<P>  The time on the server is ${serverTime}. </P>
</body>
</html>
