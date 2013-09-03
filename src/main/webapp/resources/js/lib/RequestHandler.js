var RequestHandler = Class.extend({
	
	init: function() {
	}
	
	, getHttpPromise: function(url, http, q, log) {
		var deferred = q.defer();
		http({
			method: 'GET'
			, url: url
		}).success(function(data, status, headers, config) {
			deferred.resolve(data);
		}).error(function(data, status, headers, config) {
			if(log) {
				log.warn(data, status, headers(), config);
			}
		});
		return deferred.promise;
	}
	
	, postHttpPromise: function(url, postObject, http, q, log) {
		var deferred = q.defer();
		http.post(
			url
			, postObject
		).success(function(data, status, headers, config) {
			deferred.resolve(data);
		}).error(function(data, status, headers, config) {
			deferred.reject(status);
			if(log) {
				log.warn(data, status, headers(), config);
			}
		});
		return deferred.promise;
	}
});