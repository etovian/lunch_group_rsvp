package com.stgutah.model;

import java.util.Collection;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.stgutah.model.enums.EventStatus;

@Entity
@Table(name="event")
public class Event {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="id")
	private Integer id;
	
	@Column(name="invitation_id")
	private Integer invitationId;
	
	@Column(name="title")
	private String title;
	
	@ManyToOne
	@JoinColumn(name="location_id", referencedColumnName="id")
	private Location location;
	
	@Column(name="event_status")
	@Enumerated(EnumType.STRING)
	private EventStatus status;
	
	@Column(name="start_time")
	private Date startTime;
	
	@Column(name="end_time")
	private Date endTime;

	@ManyToOne
	@JoinColumn(name="organizer_person_id", referencedColumnName="id")
	private Person organizer;
	
	@ManyToMany
	@JoinTable
	(
		name="event_rsvp"
		, joinColumns={ @JoinColumn(name="event_id", referencedColumnName="id") }
		, inverseJoinColumns={ @JoinColumn(name="person_id", referencedColumnName="id") }
	)
	private Collection<Person> rsvps; 
	
	@ManyToMany
	@JoinTable
	(
		name="event_attendee"
		, joinColumns={ @JoinColumn(name="event_id", referencedColumnName="id") }
		, inverseJoinColumns={ @JoinColumn(name="person_id", referencedColumnName="id") }
	)
	private Collection<Person> attendees;
	
	public Event() {

	}

	public Event(String title, Location location, EventStatus status,
			Date startTime, Date endTime, Person organizer) {

		this.title = title;
		this.location = location;
		this.status = status;
		this.startTime = startTime;
		this.endTime = endTime;
		this.organizer = organizer;
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

	public Collection<Person> getRsvps() {
		return rsvps;
	}

	public void setRsvps(Collection<Person> rsvps) {
		this.rsvps = rsvps;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getInvitationId() {
		return invitationId;
	}

	public void setInvitationId(Integer invitationId) {
		this.invitationId = invitationId;
	}

}
