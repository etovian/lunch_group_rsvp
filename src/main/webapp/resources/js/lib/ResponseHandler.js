var ResponseHandler = Class.extend({
	
	init: function(scope) {
		this.scope = scope;
	}

	, processCommands: function(commands) {
		
		for(var i = 0; i < commands.length; i++) {
			var command = commands[i];
			switch(command.type) {
				case "METHOD":
					this.executeMethod(command.name, command.payload);
					break;
				case "PROPERTY":
					this.setScopeProperty(command.name, command.payload);
					break;
			}
		}
	}

	, executeMethod: function(methodName, payload) {
		this.scope[methodName](payload);
	}
	
	, setScopeProperty: function(propertyName, value) {
		this.scope[propertyName] = value;
	}
});