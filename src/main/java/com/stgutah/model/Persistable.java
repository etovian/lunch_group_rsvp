package com.stgutah.model;

import javax.persistence.Id;

public class Persistable {

	@Id
	private Integer id;
	
	public Persistable() {
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

}
