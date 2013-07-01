invitationApp.controller("InvitationController", InvitationController);

function InvitationController($scope, invitationService) {
	
	$scope.ui = {
		showEventTile: false
		, showInviteeTile: false
	};

	$scope.setUsers = function(users) {
		$scope.users = users;
	};
	
	$scope.invitations = invitationService.getInvitations();
	$scope.locations = invitationService.getLocations();
	$scope.events = invitationService.getEvents();
//	$scope.users = invitationService.getUsers();
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