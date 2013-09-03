<div id="viewYourInvitations">
	<div class="row">
		<div class="span4">
			<div class="tile">
				<h3>Invitations ({{invitations.length}})</h3>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="span4">
			<div id="invitation-scroller">
				<div 
					class="tile click-me hover-highlight" 
					data-invitation="invitation" 
					data-ng-repeat="invitation in invitations"
					data-selectable-div 
					data-on-selected="selectInvitation($event, invitation);" 
					data-ng-click="onSelected();">
					
					<h4>{{invitation.title}}</h4>
					<p>Events: {{invitation.events.length}}</p>
					<p>Invitees: {{invitation.invitees.length}}</p>
					<p>Created: {{invitation.created | date:'short'}}</p>
					<p>Sent: {{invitation.sent}}</p>
				</div>
			</div>
		</div>
		<div class="span12">
			<div class="row">
				<div class="span12">
					<div data-ng-show="ui.showEventTile" data-ng-animate="'fade'" class="tile">
						<button type="button" class="close" data-ng-click="ui.showEventTile=false;">×</button>
						<h2>Events for {{selectedInvitation.title}}</h2>
						<div class="pull-right">
							<div class="btn-group">
								<button data-ng-click="addInvitationEvent();" class="btn" type="button">Add</button>
								<button data-ng-disabled="!selectedInvitationEvent" data-ng-click="editInvitationEvent();" class="btn" type="button">Edit</button>
								<button data-ng-disabled="!selectedInvitationEvent" data-ng-click="deleteInvitationEvent();" class="btn" type="button">Delete</button>
							</div>
						</div>
						<table id="tblInvitationEvents" class="table stripedTable">
							<thead>
								<tr>
									<td>Title</td>
									<td>Location</td>
									<td>Address</td>
									<td>Organizer</td>
									<td>Start</td>
									<td>End</td>
								</tr>
							</thead>
							<tbody>
								<tr 
									data-ng-repeat="event in selectedInvitation.events | orderBy:eventSortOrder"
									data-ng-click="selectInvitationEvent(event);">
									
									<td>{{event.title}}</td>
									<td>{{event.location.name}}</td>
									<td>{{event.location.streetAddress}} <br/> {{event.location.city}}, {{event.location.zip}}</td>
									<td>{{event.organizer.firstName}}  {{event.organizer.lastName}}</td>
									<td>{{event.startTime | date:'short'}}</td>
									<td>{{event.endTime | date:'shortTime'}}</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="span12">
					<div data-ng-show="ui.showInviteeTile"  data-ng-animate="'fade'" class="tile">
					<button type="button" class="close" data-ng-click="ui.showInviteeTile=false;">×</button>
						<h2>Invitees for {{selectedInvitation.title}}</h2>
						<div class="pull-right">
							<div class="btn-group">
								<button data-ng-click="selectInvitees();" class="btn" type="button">Add</button>
								<button data-ng-disabled="'true'" class="btn" type="button">Delete</button>
							</div>
						</div>
						<table id="tblInvitees" class="table stripedTable">
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
</div>