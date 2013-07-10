invitationApp.controller("InvitationController", InvitationController);

function InvitationController($scope, $timeout, $log, invitationService) {
	
	$scope.ui = {
		showEventTile: false
		, showInviteeTile: false
		, showAddEditInvitationEventPopup: false
		, showUserLookup: false
		
		, showInvitationPane: true
		, showLocationPane: false
		, showPane: function(pane) {
			
			$scope.ui.showInvitationPane = false;
			$scope.ui.showLocationPane = false;
			
			$scope.ui[pane] = true;
		}
	};
	
	$scope.userLookup = {
		selectedUser: null
		, filter: null
		, onUserConfirmed: null //function
	};
	
	var responseHandler = new ResponseHandler($scope);

	$scope.messages = [];
	$scope.addMessage = function(message) {
		$scope.messages.push(message);
		
		if(message.displaySeconds) {
			var displayLength = message.displaySeconds ? message.displaySeconds * 1000 : 5000; 
			$timeout(function() {
				$scope.removeMessage(message);
			}, displayLength);			
		}
	};
	
	$scope.removeMessage = function(message) {
		$scope.messages = _.without($scope.messages, message);
	};
	
	$scope.invitations = [];
	$scope.invitationsPromise = invitationService.getInvitations().then(function(response) {
		responseHandler.processCommands(response.commands);
	});

	$scope.locations = [];
	$scope.locationPromise = invitationService.getLocations().then(function(response) {
		responseHandler.processCommands(response.commands);
	});
	$scope.selectedLocation = null;
	$scope.selectLocation = function(location) {
//		alert(location.name);
		$scope.selectedLocation = location;
	};
	
	$scope.saveLocation = function() {
		invitationService.saveLocation($scope.selectedLocation).then(function(response) {
			responseHandler.processCommands(response.commands);
		});
	};
	$scope.onLocationSaved = function(location) {
		$scope.locations.push(location);
	};
	$scope.clearSelectedLocation = function() {
		$scope.selectedLocation = null;
	};

	$scope.users = invitationService.getUsers();

	$scope.inviteeSortOrder = "lastName";
	$scope.eventSortOrder = "startTime";
	
	$scope.selectedInvitation = null;
	$scope.selectedInvitationEvent = null;
	
	$scope.selectInvitation = function (event, invitation) {
		
		$scope.selectedInvitation = invitation;
		$scope.ui.showEventTile = true;
		$scope.ui.showInviteeTile = true;
	};
	
	
	//invitation events
	$scope.selectInvitationEvent = function(invitationEvent) {
		$scope.selectedInvitationEvent = invitationEvent;
		
		$.each($scope.users.$$v, function(index, user) {
			if(user.id == $scope.selectedInvitationEvent.organizer.id) {
				$scope.selectedInvitationEvent.organizer = user;
			}
		});
	};
	
	$scope.addInvitationEvent = function() {
	
		$scope.selectedInvitationEvent = null;
		$scope.ui.showAddEditInvitationEventPopup = true;
	};
	
	$scope.editInvitationEvent = function() {
		$scope.ui.showAddEditInvitationEventPopup = true;
	};

	$scope.saveInvitationEvent = function() {
		
		invitationService.saveInvitationEvent($scope.selectedInvitationEvent)
			.then(function(response) {
				responseHandler.processCommands(response.commands);
			});
	};
	
	$scope.onInvitationEventSaved = function(event) {
		$log.info("invitation event saved", event);
	};
	
	//invitees
	$scope.selectInvitees = function() {
		$scope.ui.showUserLookup = true;
		$scope.userLookup.onUserConfirmed = $scope.onInviteeConfirmed;
	};
	
	$scope.onInviteeConfirmed = function(invitee) {
		invitationService.addInvitee(invitee)
			.then(function(response) {
				responseHandler.processCommands(response.commands);
			});
	};
	
	$scope.onInviteeAdded = function(invitee) {
		$scope.selectedInvitation.invitees.push(invitee);
	};
}