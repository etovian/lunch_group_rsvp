$(onReady);
var _scope;

function onReady() {
	addEventListeners();
}

function addEventListeners() {
	
	$("#invitation-scroller").on("click", ".tile.click-me", function() {
		$(this).parent().children().removeClass("selected");
		$(this).addClass("selected");
	});
}