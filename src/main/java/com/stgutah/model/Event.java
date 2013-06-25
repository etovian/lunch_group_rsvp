package com.stgutah.model;

import java.util.Collection;
import java.util.Date;

import com.stgutah.model.enums.EventStatus;

public class Event extends Persistable {

	private String title;
	private Location location;
	private EventStatus status;
	private Date startTime;
	private Date endTime;
	private Person organizer;
	private Collection<Person> attendees;
	
	public Event() {
		//making some changes to see if git gets them...
		//sigh...
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Location getLocation() {
		return location;
	}

	public void setLocation(Location location) {
		this.location = location;
	}

	public EventStatus getStatus() {
		return status;
	}

	public void setStatus(EventStatus status) {
		this.status = status;
	}

	public Date getStartTime() {
		return startTime;
	}

	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}

	public Date getEndTime() {
		return endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

	public Person getOrganizer() {
		return organizer;
	}

	public void setOrganizer(Person organizer) {
		this.organizer = organizer;
	}

	public Collection<Person> getAttendees() {
		return attendees;
	}

	public void setAttendees(Collection<Person> attendees) {
		this.attendees = attendees;
	}

}
