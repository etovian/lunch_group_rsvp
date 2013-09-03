package com.stgutah.service;

import java.util.Collection;

import com.stgutah.model.Event;
import com.stgutah.model.Invitation;
import com.stgutah.model.Location;
import com.stgutah.model.Person;

public interface InvitationService {

	Collection<Person> getUsers();
	Person savePerson(Person person);
	
	Collection<Invitation> getInvitations();
	Invitation saveInvitation(Invitation invitation);
	
	Collection<Event> getEvents();
	Invitation deleteInvitationEvent(Event event);
	
	Collection<Location> getLocations();
	Location saveLocation(Location location);
}
