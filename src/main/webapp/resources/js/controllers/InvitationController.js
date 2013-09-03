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
			$scope.ui.showCreateInvitationPane = false;
			$scope.ui.showAdminPane = false;
			
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
	
	//invitations
	$scope.invitations = [];
	$scope.invitationsPromise = invitationService.getInvitations().then(function(response) {
		responseHandler.processCommands(response.commands);
	});
	$scope.saveInvitation = function() {
		invitationService.saveInvitation($scope.selectedInvitation).then(function(response) {
			responseHandler.processCommands(response.commands);
		});
	};
	$scope.onInvitationSaved = function(invitation) {
		$scope.selectedInvitation = invitation;
	};
	
	//locations
	$scope.locations = [];
	$scope.locationPromise = invitationService.getLocations().then(function(response) {
		new ResponseHandler($scope).processCommands(response.commands);
	});
	$scope.selectedLocation = null;
	$scope.selectLocation = function(location) {
//		alert(location.name);
		$scope.selectedLocation = location;
	};
	
	$scope.saveLocation = function() {
		invitationService.saveLocation($scope.selectedLocation).then(function(response) {
			new ResponseHandler($scope).processCommands(response.commands);
		});
	};
	$scope.onLocationSaved = function(location) {
		$scope.selectedLocation = location;
	};
	$scope.clearSelectedLocation = function() {
		$scope.selectedLocation = null;
	};

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
		
		$.each($scope.users, function(index, user) {
			if(user.id == $scope.selectedInvitationEvent.organizer.id) {
				$scope.selectedInvitationEvent.organizer = user;
			}
		});
		
		$.each($scope.locations, function(index, location) {
			if(location.id == $scope.selectedInvitationEvent.location.id) {
				$scope.selectedInvitationEvent.location = location;
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
		
		$scope.selectedInvitation.events.push($scope.selectedInvitationEvent);
		invitationService.saveInvitationEvent($scope.selectedInvitation)
			.then(function(response) {
				responseHandler.processCommands(response.commands);
			}); 
	};
	
	$scope.onInvitationEventSaved = function(event) {
		$log.info("invitation event saved", event);
	};
	
	$scope.deleteInvitationEvent = function() {
		invitationService.deleteInvitationEvent($scope.selectedInvitationEvent)
			.then(function(response) {
				responseHandler.processCommands(response.commands);
			});
	};
	
	//invitees
	$scope.selectInvitees = function() {
		$scope.ui.showUserLookup = true;
		$scope.userLookup.onUserConfirmed = $scope.onInviteeConfirmed;
	};
	
	$scope.onInviteeConfirmed = function(invitee) {
		$scope.selectedInvitation.invitees.push(invitee);
		invitationService.addInvitee($scope.selectedInvitation)
			.then(function(response) {
				responseHandler.processCommands(response.commands);
			});
	};
	
	$scope.onInviteeAdded = function(invitee) {
		$scope.selectedInvitation.invitees.push(invitee);
	};
	
	//users
	$scope.users = [];
	invitationService.getUsers()
		.then(function(response) {
				responseHandler.processCommands(response.commands);
			});
	$scope.newUser = {
		firstName: ""
		, lastName: ""
		, emailAddress: ""
	};
	$scope.saveUser = function() {
		invitationService.saveUser($scope.newUser)
			.then(function(response) {
				responseHandler.processCommands(response.commands);
			});
	};
	$scope.onUserSaved = function(user) {
		$scope.users.push(user);
	};
}