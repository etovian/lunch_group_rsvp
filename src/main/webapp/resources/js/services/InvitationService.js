var InvitationService = function($http, $log, $q) {

	var service = {};
	
	service.getEvents = function(onSuccess) {
		$http({
			method: 'GET'
			, url: "getEvents"
		}).success(function(data, status, headers, config) {
			onSuccess(data);
			$log.info(data, status, headers(), config);
		}).error(function(data, status, headers, config) {
			alert('get events http error!');
//			$log.warn(data, status, headers(), config);
		});
	};

	service.getLocations = function(onSuccess) {
		$http({
			method: 'GET'
			, url: "getLocations"
		}).success(function(data, status, headers, config) {
			onSuccess(data);
		}).error(function(data, status, headers, config) {
			alert('get locations http error!');
//			$log.warn(data, status, headers(), config);
		});
	};

	service.getUsers = function() {
		var deferred = $q.defer();
		$http({
			method: 'GET'
			, url: "getUsers.json"
		}).success(function(data, status, headers, config) {
			deferred.resolve(data);
		}).error(function(data, status, headers, config) {
//			alert('get users http error!');
			deferred.reject(status);
			$log.warn(data, status, headers(), config);
		});
		return deferred.promise;
	};

	service.getInvitations = function() {
		var deferred = $q.defer();
		$http({
			method: 'GET'
			, url: "getInvitations.json"
		}).success(function(data, status, headers, config) {
//			deferred.resolve(data.invitations);
			deferred.resolve(data);
			$log.info(data, status, headers(), config);
		}).error(function(data, status, headers, config) {
			deferred.reject(status);
			$log.warn(data, status, headers(), config);
		});
		
		return deferred.promise;
	};
	
	service.saveInvitationEvent = function(invitationEvent) {
		var deferred = $q.defer();
		$http.post(
			"saveInvitationEvent.json"
			, invitationEvent
		).success(function(data, status, headers, config) {
			deferred.resolve(data);
			$log.info(data, status, headers(), config);
		}).error(function(data, status, headers, config) {
			deferred.reject(status);
			$log.warn(data, status, headers(), config);
		});
		
		return deferred.promise;
	};
	
	return service;
};
invitationApp.factory("invitationService", InvitationService);
