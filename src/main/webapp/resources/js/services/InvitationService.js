var InvitationService = function($http) {

	var service = {};
	
	service.getEvents = function(onSuccess) {
		$http({
			method: 'GET'
			, url: "getEvents"
		}).success(function(data, status, headers, config) {
			onSuccess(data);
		}).error(function(data, status, headers, config) {
			alert('get events http error!');
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
		});
	};

	service.getUsers = function(onSuccess) {
		
		$http({
			method: 'GET'
			, url: "getUsers"
		}).success(function(data, status, headers, config) {
			onSuccess(data);
		}).error(function(data, status, headers, config) {
			alert('get users http error!');
		});

	};

	service.getInvitations = function(onSuccess) {
		$http({
			method: 'GET'
			, url: "getInvitations"
		}).success(function(data, status, headers, config) {
			onSuccess(data);
		}).error(function(data, status, headers, config) {
			alert('get invitations http error!');
		});
	};
	
	return service;
};

invitationApp.factory("invitationService", InvitationService);

//var location1 = { name: "Arby's", streetAddress: "845 Heartburn Way", city: "Provo", state: "UT", zip: "11111" };
//var location2 = { name: "McDonald's", streetAddress: "132 Indigestion St.", city: "Sandy", state: "UT", zip: "22222" };
//var location3 = { name: "Western Sizzler", streetAddress: "439 Gassy Blvd.", city: "Salt Lake City", state: "UT", zip: "33333" };
//var location4 = { name: "Golden Corral", streetAddress: "687 Nausea Circle", city: "Layton", state: "UT", zip: "44444" };
//var location5 = { name: "Ruth's Chris Steakhouse", streetAddress: "909 Now We're Talking Ave", city: "Park City", state: "UT", zip: "55555" };
//var locations = [location1, location2, location3, location4, location5];
//
//var user1 = { firstName: "Michael", lastName: "Green", emailAddress: "mike.green@stgutah.com" };
//var user2 = { firstName: "Bryan", lastName: "Hansen", emailAddress: "bryan@stgutah.com" };
//var user3 = { firstName: "Matt", lastName: "Cosper", emailAddress: "matt.cosper@stgutah.com" };
//var user4 = { firstName: "Kyla", lastName: "Bishop", emailAddress: "kyla.bishop@stgutah.com" };
//var user5 = { firstName: "Kellie", lastName: "Bower", emailAddress: "kellie.bower@stgutah.com" };
//var users = [user1, user2, user3, user4, user5];
//
//var event1 = { title: "SLC South", location: location1, startTime: new Date(2001, 11, 19, 13, 0, 0, 0), endTime: new Date(2001, 11, 19, 14, 0, 0, 0), organizer: user1, attendees: [user1, user2, user3] };
//var event2 = { title: "SLC Central", location: location2, startTime: new Date(), endTime: new Date(), organizer: user1, attendees: [user1, user4, user5] };
//var event3 = { title: "SLC North", location: location3, startTime: new Date(), endTime: new Date(), organizer: user1, attendees: [user1, user3, user5] };
//var event4 = { title: "Davis County", location: location4, startTime: new Date(), endTime: new Date(), organizer: user1, attendees: [user1, user2, user4] };
//var event5 = { title: "Provo", location: location5, startTime: new Date(), endTime: new Date(), organizer: user1, attendees: [user1, user2, user3, user4, user5] };
//var events = [event1, event2, event3, event4, event5];
//
//var invitation1 = { title: "Java Group, July 2013", events: events, created: "06/27/2013", sent: "06/27/2013", invitees: users };
//var invitation2 = { title: "Java Group, August 2013", events: [event2, event3, event4], created: "06/27/2013", sent: "06/27/2013", invitees: users };
//var invitation3 = { title: "Java Group, September 2013", events: [event2, event5], created: "06/27/2013", sent: "06/27/2013", invitees: users };
//var invitation4 = { title: "Java Group, October 2013", events: [event1, event3, event5], created: "06/27/2013", sent: "06/27/2013", invitees: users };
//var invitation5 = { title: "Java Group, November 2013", events: [event2, event4], created: "06/27/2013", sent: "06/27/2013", invitees: users };
//var invitations = [invitation1, invitation2, invitation3, invitation4, invitation5];