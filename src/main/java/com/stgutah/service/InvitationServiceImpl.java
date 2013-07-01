package com.stgutah.service;

import java.util.Collection;

import org.springframework.stereotype.Service;

import com.stgutah.model.Event;
import com.stgutah.model.Invitation;
import com.stgutah.model.InvitationData;
import com.stgutah.model.Location;
import com.stgutah.model.Person;

@Service("invitationService")
public class InvitationServiceImpl implements InvitationService {

	public InvitationServiceImpl() {

	}

	@Override
	public Collection<Person> getUsers() {
		return InvitationData.getUsers();
	}

	@Override
	public Collection<Invitation> getInvitations() {
		return InvitationData.getInvitations();
	}

	@Override
	public Collection<Event> getEvents() {
		return InvitationData.getEvents();
	}

	@Override
	public Collection<Location> getLocations() {
		return InvitationData.getLocations();
	}

}
