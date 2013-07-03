package com.stgutah.view;

public class ClientCommand {

	private ClientCommandType type;
	private String name;
	private Object payload;
	
	public ClientCommand() {
	}
	
	public ClientCommand(ClientCommandType type, String name, Object payload) {
		this.type = type;
		this.name = name;
		this.payload = payload;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Object getPayload() {
		return payload;
	}

	public void setPayload(Object payload) {
		this.payload = payload;
	}

	public ClientCommandType getType() {
		return type;
	}

	public void setType(ClientCommandType type) {
		this.type = type;
	}

}
