invitationApp.controller("InvitationController", InvitationController);

function InvitationController($scope, invitationService) {
	
	$scope.ui = {
		showEventTile: false
		, showInviteeTile: false
	};
	
	$scope.invitations = invitationService.getInvitations();
//	$scope.locations = invitationService.getLocations();
//	$scope.events = invitationService.getEvents();
//	$scope.users = invitationService.getUsers();

	$scope.inviteeSortOrder = "lastName";
	$scope.eventSortOrder = "startTime";
	
	$scope.selectedInvitation = null;
	
	$scope.selectInvitation = function (event, invitation) {
		
		$scope.selectedInvitation = invitation;
		$scope.ui.showEventTile = true;
		$scope.ui.showInviteeTile = true;
	};

}