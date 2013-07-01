invitationApp.controller("InvitationController", InvitationController);

function InvitationController($scope, invitationService) {
	
	$scope.ui = {
		showEventTile: false
		, showInviteeTile: false
	};

//	$scope.setUsers = function(users) {
//		$scope.users = users;
//	};
	
//	$scope.setLocations = function(response) {
//		$scope.locations = response.locations;
//	};
	
//	$scope.setEvents = function(events) {
//		$scope.events = events;
//	};
	
	$scope.setInvitations = function(response) {
		$scope.invitations = response.invitations;
	};
	
//	$scope.invitations = invitationService.getInvitations();
//	$scope.locations = invitationService.getLocations();
//	$scope.events = invitationService.getEvents();
//	$scope.users = invitationService.getUsers();
	
	invitationService.getInvitations($scope.setInvitations);
	invitationService.getLocations($scope.setLocations);
	invitationService.getEvents($scope.setEvents);
	invitationService.getUsers($scope.setUsers);

	$scope.inviteeSortOrder = "lastName";
	$scope.eventSortOrder = "startTime";
	
	$scope.selectedInvitation = null;
	
	$scope.selectInvitation = function (event, invitation) {
		
		$scope.selectedInvitation = invitation;
		$scope.ui.showEventTile = true;
		$scope.ui.showInviteeTile = true;
	};

}