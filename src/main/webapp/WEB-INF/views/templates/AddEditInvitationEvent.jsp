<div 
	id="popup-add-invitation-event" 
	data-ng-show="ui.showAddEditInvitationEventPopup"  
	data-ng-animate="'fade'" 
	class="shadow tile">
	
	<button type="button" class="close" data-ng-click="ui.showAddEditInvitationEventPopup=false;">×</button>
	<h3>Invitation Event</h3>
	<form class="form-horizontal">
		
		<div class="control-group">
			<label class="control-label" for="eventTitle">Title</label>
			<div class="controls">
				<input 
					id="eventTitle" 
					data-ng-model="selectedInvitationEvent.title"
					data-ng-required="'true'" 
					placeholder="Enter an event title" 
					type="text"
					class="input-large"/>
			</div>
		</div>
		
		<div class="control-group">
			<label class="control-label" for="eventLocation">Location</label>
			<div class="controls">
				<select id="eventLocation"></select>
			</div>
		</div>
		
		<div class="control-group">
			<label class="control-label">Address</label>
			<div class="controls">
				<label>{{ selectedInvitationEvent.location.streetAddress }}</label>
				<label>{{ selectedInvitationEvent.location.city }}, {{ selectedInvitationEvent.location.state }}  {{ selectedInvitationEvent.location.zip }}</label>
			</div>
		</div>
		
		<div class="control-group">
			<label class="control-label" for="eventOrganizer">Organizer</label>
			<div class="controls">
<!-- 				<select id="eventOrganizer" data-ng-model="selectedInvitationEvent.organizer"  data-ng-options="(user.firstName + ' ' + user.lastName) for user in users"> -->
				<select 
					id="eventOrganizer" 
					data-ng-model="selectedInvitationEvent.organizer"  
					data-ng-options="(user.firstName + ' ' + user.lastName) for (id, user) in users">
<!-- 					value.name | uppercase for (key, value) in optionsObjectA -->
<!-- 				select as label for (key , value) in object -->
				</select>
			</div>
		</div>
		
		<div class="control-group">
			<label class="control-label" for="eventStart">Starts</label>
			<div class="controls">
				<input id="eventStart" data-ng-model="selectedInvitationEvent.startTime" type="text"/>
			</div>
		</div>
		
		<div class="control-group">
			<label class="control-label" for="eventEnd">Ends</label>
			<div class="controls">
				<input id="eventEnd" data-ng-model="selectedInvitationEvent.endTime" type="text"/>
			</div>
		</div>
		
		<div class="control-group">
			<div class="controls">
				<div class="btn-group pull-right">
					<button class="btn btn-danger" data-ng-click="ui.showAddEditInvitationEventPopup=false;">Cancel</button>
					<button class="btn btn-primary" data-ng-click="saveInvitationEvent();">Save</button>
				</div>
			</div>
		</div>
		
	</form>	
</div>