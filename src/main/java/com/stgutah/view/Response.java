package com.stgutah.view;

import java.util.ArrayList;
import java.util.Collection;

public class Response {

	private Collection<ClientCommand> commands = new ArrayList<ClientCommand>();
	
	public Response() {
	}

	public Collection<ClientCommand> getCommands() {
		return commands;
	}

	public void setCommands(Collection<ClientCommand> commands) {
		this.commands = commands;
	}

	public void addCommand(ClientCommand command) {
		if(commands == null) {
			commands = new ArrayList<ClientCommand>();
		}
		
		commands.add(command);
	}
}
