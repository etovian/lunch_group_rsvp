package com.stgutah.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="invitation")
public class Invitation {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="id")
	private Integer id;
	
	@Column(name="title")
	private String title;
	
	@Column(name="allow_multiple_attendance")
	private Boolean allowMultipleAttendance;

	@Column(name="created")
	private Date created;
	
	@Column(name="sent")
	private Date sent;
	
	@OneToMany(cascade=CascadeType.ALL)
	@JoinColumn(name="invitation_id", referencedColumnName="id")
	private List<Event> events = new ArrayList<Event>();
	
	@ManyToMany(cascade=CascadeType.ALL)
	@JoinTable
	(
		name="invite_invitee"
		, joinColumns={ @JoinColumn(name="invitation_id", referencedColumnName="id") }
		, inverseJoinColumns={ @JoinColumn(name="person_id", referencedColumnName="id") }
	)
	private List<Person> invitees = new ArrayList<Person>();
	
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="created_by_person_id", referencedColumnName="id")
	private Person createdBy;
	
	public Invitation() {
	}

	public Invitation(String title, List<Event> events,
			List<Person> invitees, Boolean allowMultipleAttendance,
			Date created, Date sent) {

		this.title = title;
		this.events = events;
		this.invitees = invitees;
		this.allowMultipleAttendance = allowMultipleAttendance;
		this.created = created;
		this.sent = sent;
	}

	public List<Event> getEvents() {
		return events;
	}

	public void setEvents(List<Event> events) {
		this.events = events;
	}

	public List<Person> getInvitees() {
		return invitees;
	}

	public void setInvitees(List<Person> invitees) {
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

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Person getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(Person createdBy) {
		this.createdBy = createdBy;
	}

}
