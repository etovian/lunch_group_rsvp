package com.stgutah.service;

import java.util.Collection;

import com.stgutah.model.Event;
import com.stgutah.model.Invitation;
import com.stgutah.model.Location;
import com.stgutah.model.Person;

public interface InvitationService {

	Collection<Person> getUsers();
	Collection<Invitation> getInvitations();
	Collection<Event> getEvents();
	Collection<Location> getLocations();
}
