var InvitationService = function($http, $log, $q) {

	var service = {};

	service.getLocations = function() {
		return new RequestHandler().getHttpPromise('getLocations.json', $http, $q, $log);
	};

	service.getUsers = function() {
		return new RequestHandler().getHttpPromise('getUsers.json', $http, $q, $log);
	};
	
	service.saveUser = function(user) {
		return new RequestHandler().postHttpPromise('saveUser.json', user, $http, $q, $log);
	};

	service.getInvitations = function() {
		return new RequestHandler().getHttpPromise('getInvitations.json', $http, $q, $log);
	};
	
	service.saveInvitationEvent = function(invitation) {
		return new RequestHandler().postHttpPromise('saveInvitationEvent.json', invitation, $http, $q, $log);
	};
	
	service.deleteInvitationEvent = function(invitationEvent) {
		return new RequestHandler().postHttpPromise('deleteInvitationEvent.json', invitationEvent, $http, $q, $log);
	};
	
	service.addInvitee = function(invitation) {
		return new RequestHandler().postHttpPromise('addInvitee.json', invitation, $http, $q, $log);
	};
	
	service.saveLocation = function(location) {
		return new RequestHandler().postHttpPromise('saveLocation.json', location, $http, $q, $log);
	};
	
	service.saveInvitation = function(invitation) {
		return new RequestHandler().postHttpPromise('saveInvitation.json', invitation, $http, $q, $log);
	};
	
	return service;
};

invitationApp.factory("invitationService", InvitationService);
