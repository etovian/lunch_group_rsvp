package com.stgutah.model;

import java.util.Collection;

public class Invitation extends Persistable {

	private Collection<Event> events;
	private Collection<Person> invitees;
	private Boolean allowMultipleAttendance;
	
	public Invitation() {
	}

	public Collection<Event> getEvents() {
		return events;
	}

	public void setEvents(Collection<Event> events) {
		this.events = events;
	}

	public Collection<Person> getInvitees() {
		return invitees;
	}

	public void setInvitees(Collection<Person> invitees) {
		this.invitees = invitees;
	}

	public Boolean getAllowMultipleAttendance() {
		return allowMultipleAttendance;
	}

	public void setAllowMultipleAttendance(Boolean allowMultipleAttendance) {
		this.allowMultipleAttendance = allowMultipleAttendance;
	}

}
