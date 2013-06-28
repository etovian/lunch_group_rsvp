package com.stgutah.model;

import java.util.Collection;
import java.util.Date;

public class Invitation extends Persistable {

	private String title;
	private Collection<Event> events;
	private Collection<Person> invitees;
	private Boolean allowMultipleAttendance;
	private Date created;
	private Date sent;
	
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

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Date getCreated() {
		return created;
	}

	public void setCreated(Date created) {
		this.created = created;
	}

	public Date getSent() {
		return sent;
	}

	public void setSent(Date sent) {
		this.sent = sent;
	}

}
