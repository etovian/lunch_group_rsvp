package com.stgutah.service;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.stgutah.model.Event;
import com.stgutah.model.Invitation;
import com.stgutah.model.InvitationData;
import com.stgutah.model.Location;
import com.stgutah.model.Person;
import com.stgutah.repository.EventRepository;
import com.stgutah.repository.InvitationRepository;
import com.stgutah.repository.LocationRepository;
import com.stgutah.repository.PersonRepository;

@Service("invitationService")
public class InvitationServiceImpl implements InvitationService {

	@Autowired
	private PersonRepository personRepository;

	@Autowired
	private InvitationRepository invitationRepository;
	
	@Autowired 
	private LocationRepository locationRepository;

	@Autowired
	private EventRepository eventRepository;
	
	public InvitationServiceImpl() {

	}

	@Override
	public Collection<Person> getUsers() {
		return personRepository.findAll();
	}
	
	public Person savePerson(Person person) {
		return personRepository.save(person);
	}

	@Override
	public Collection<Invitation> getInvitations() {
		return invitationRepository.findAll();
//		return InvitationData.getInvitations();
	}

	@Override
	public Collection<Event> getEvents() {
		return InvitationData.getEvents();
	}

	@Override
	public Collection<Location> getLocations() {
//		return InvitationData.getLocations();
		return locationRepository.findAll();
	}

	@Override
	public Invitation saveInvitation(Invitation invitation) {
		invitationRepository.saveAndFlush(invitation);
		Invitation out = invitationRepository.findOne(invitation.getId());
		return out;
	}

	@Override
	public Location saveLocation(Location location) {
		return locationRepository.save(location);
	}

	@Override
	public Invitation deleteInvitationEvent(Event event) {
		Integer invitationId = event.getInvitationId();
		eventRepository.delete(event);
		return invitationRepository.findOne(invitationId);
	}
}
