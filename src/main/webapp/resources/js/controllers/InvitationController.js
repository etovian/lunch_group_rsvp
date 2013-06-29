var invitationApp = angular
	.module("invitationApp", [/*module dependencies: find out how these work*/])
	.controller("InvitationController", InvitationController);

function InvitationController($scope, invitationService) {
	
	$scope.invitations = invitationService.getInvitations();
	$scope.locations = invitationService.getLocations();
	$scope.events = invitationService.getEvents();
	$scope.users = invitationService.getUsers();

	$scope.inviteeSortOrder = "lastName";
	$scope.eventSortOrder = "startTime";
	
	$scope.selectedInvitation = null;
	
	$scope.selectInvitation = function (event, invitation) {
		
		$scope.selectedInvitation = invitation;
	};
}