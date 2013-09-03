package com.stgutah.model;

import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name="group_info")
public class Group extends Persistable {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="id")
	private Integer id;
	
	@Column(name="name")
	private String name;
	
	@ManyToMany
	@JoinTable
	(
		name="group_person"
		, joinColumns={ @JoinColumn(name="group_id", referencedColumnName="id") }
		, inverseJoinColumns={ @JoinColumn(name="person_id", referencedColumnName="id") }
	)
	private Collection<Person> members;
	
	public Group() {
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Collection<Person> getMembers() {
		return members;
	}

	public void setMembers(Collection<Person> members) {
		this.members = members;
	}

}
