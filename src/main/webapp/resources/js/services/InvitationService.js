var InvitationService = function($http, $log, $q) {

	var service = {};

	service.getLocations = function() {
		return new RequestHandler().getHttpPromise('getLocations.json', $http, $q, $log);
	};

	service.getUsers = function() {
		return new RequestHandler().getHttpPromise('getUsers.json', $http, $q, $log);
	};

	service.getInvitations = function() {
		return new RequestHandler().getHttpPromise('getInvitations.json', $http, $q, $log);
	};
	
	service.saveInvitationEvent = function(invitationEvent) {
		return new RequestHandler().postHttpPromise('saveInvitationEvent.json', invitationEvent, $http, $q, $log);
	};
	
	service.addInvitee = function(invitee) {
		return new RequestHandler().postHttpPromise('addInvitee.json', invitee, $http, $q, $log);
	};
	
	service.saveLocation = function(location) {
		return new RequestHandler().postHttpPromise('saveLocation.json', location, $http, $q, $log);
	};
	
	return service;
};

invitationApp.factory("invitationService", InvitationService);
