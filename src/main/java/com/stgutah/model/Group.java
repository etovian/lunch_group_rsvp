package com.stgutah.model;

import java.util.Collection;

public class Group extends Persistable {

	private String name;
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
