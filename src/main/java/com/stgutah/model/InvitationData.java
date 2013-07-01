package com.stgutah.model;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

import com.stgutah.model.enums.EventStatus;

public class InvitationData {

	public InvitationData() {

	}

	public static List<Person> getUsers() {
		
		List<Person> persons = new ArrayList<Person>();
		
		Person mike = new Person();
		mike.setFirstName("Mike");
		mike.setLastName("Green");
		mike.setEmailAddress("mike.green@stgutah.com");
		
		persons.add(mike);
		
		Person bryan = new Person();
		bryan.setFirstName("Bryan");
		bryan.setLastName("Hansen");
		bryan.setEmailAddress("bryan@stgutah.com");
		
		persons.add(bryan);
		
		persons.add(new Person("Matt", "Cosper", "matt.cosper@stgutah.com"));
		persons.add(new Person("Kyla", "Bishop", "kyla.bishop@stgutah.com"));
		persons.add(new Person("Kellie", "Bower", "kellie.bower@stgutah.com"));

		int x = 0;
		for(Person person : persons) {
			person.setId(x);
			x++;
		}
		
		return persons;
	}
	
	public static List<Location> getLocations() {
		
		List<Location> locations = new ArrayList<Location>();
		
		locations.add(new Location("Arby's", "845 Heartburn Way", "Provo", "UT", "11111"));
		locations.add(new Location("McDonald's", "132 Indigestion St.", "Sandy", "UT", "22222"));
		locations.add(new Location("Western Sizzler", "439 Gassy Blvd.", "Salt Lake City", "UT", "33333"));
		locations.add(new Location("Corral", "687 Nausea Circle", "Layton", "UT", "44444"));
		locations.add(new Location("Ruth's Chris Steakhouse", "909 Now We're Talking Ave", "Park City", "UT", "55555"));
		
		int x = 0;
		for(Location location : locations) {
			location.setId(x);
			x++;
		}
		
		return locations;
	}
	
	public static List<Event> getEvents() {
		
		List<Event> events = new ArrayList<Event>();
		
		List<Location> locations = getLocations();
		List<Person> users = getUsers();
		
		events.add(new Event("SLC South", locations.get(0), EventStatus.SCHEDULED, new Date(2013, 7, 12, 13, 0), new Date(2013, 7, 12, 14, 0), users.get(0)));
		events.add(new Event("Provo", locations.get(1), EventStatus.SCHEDULED, new Date(2013, 8, 12, 13, 0), new Date(2013, 7, 12, 14, 0), users.get(1)));
		events.add(new Event("Davis County", locations.get(2), EventStatus.SCHEDULED, new Date(2013, 9, 12, 13, 0), new Date(2013, 7, 12, 14, 0), users.get(2)));
		events.add(new Event("SLC North", locations.get(3), EventStatus.SCHEDULED, new Date(2013, 10, 12, 13, 0), new Date(2013, 7, 12, 14, 0), users.get(3)));
		events.add(new Event("SLC Central", locations.get(4), EventStatus.SCHEDULED, new Date(2013, 11, 12, 13, 0), new Date(2013, 7, 12, 14, 0), users.get(4)));
		
		int x = 0;
		for(Event event : events) {
			event.setId(x);
			x++;
		}
		
		return events;
	}
	
	public static List<Invitation> getInvitations() {
		
		List<Invitation> invitations = new ArrayList<Invitation>();
		
		List<Event> events = getEvents();
		List<Person> users = getUsers();

		List<Event> eventsInvitation0 = new ArrayList<Event>();
		eventsInvitation0.addAll(events);
		
		List<Event> eventsInvitation1 = new ArrayList<Event>();
		eventsInvitation1.add(events.get(0));
		eventsInvitation1.add(events.get(2));
		eventsInvitation1.add(events.get(4));
		
		List<Event> eventsInvitation2 = new ArrayList<Event>();
		eventsInvitation2.add(events.get(1));
		eventsInvitation2.add(events.get(3));

		List<Event> eventsInvitation3 = new ArrayList<Event>();
		eventsInvitation3.add(events.get(0));
		eventsInvitation3.add(events.get(1));
		eventsInvitation3.add(events.get(3));
		
		List<Event> eventsInvitation4 = new ArrayList<Event>();
		eventsInvitation4.add(events.get(1));
		eventsInvitation4.add(events.get(4));
		
		List<Person> inviteesInvitation0 = new ArrayList<Person>();
		inviteesInvitation0.addAll(users);
		
		List<Person> inviteesInvitation1 = new ArrayList<Person>();
		inviteesInvitation1.add(users.get(1));
		inviteesInvitation1.add(users.get(3));
		
		List<Person> inviteesInvitation2 = new ArrayList<Person>();
		inviteesInvitation2.add(users.get(0));
		inviteesInvitation2.add(users.get(2));
		inviteesInvitation2.add(users.get(4));
		
		List<Person> inviteesInvitation3 = new ArrayList<Person>();
		inviteesInvitation3.add(users.get(2));
		inviteesInvitation3.add(users.get(4));
		
		List<Person> inviteesInvitation4 = new ArrayList<Person>();
		inviteesInvitation4.add(users.get(0));
		inviteesInvitation4.add(users.get(1));
		inviteesInvitation4.add(users.get(3));
		
		invitations.add(new Invitation("Java Group, August 2013", eventsInvitation0, inviteesInvitation0, Boolean.TRUE, new Date(), null));
		invitations.add(new Invitation("Java Group, September 2013", eventsInvitation1, inviteesInvitation1, Boolean.TRUE, new Date(), null));
		invitations.add(new Invitation("Java Group, October 2013", eventsInvitation2, inviteesInvitation2, Boolean.TRUE, new Date(), null));
		invitations.add(new Invitation("Java Group, November 2013", eventsInvitation3, inviteesInvitation3, Boolean.TRUE, new Date(), null));
		invitations.add(new Invitation("Java Group, December 2013", eventsInvitation4, inviteesInvitation4, Boolean.TRUE, new Date(), null));
		
		int x = 0;
		for(Invitation invitation : invitations) {
			invitation.setId(x);
			x++;
		}
		
		return invitations;
	}
}