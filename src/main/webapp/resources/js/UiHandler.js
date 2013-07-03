$(onReady);
var _scope;

function onReady() {
	addEventListeners();
}

function addEventListeners() {
	
	//directive templates for table rows seem to be broken at the moment
	$(".table.stripedTable").on("click", "tr", function() {
		$(this).siblings().removeClass("selected");
		$(this).toggleClass("selected");
	});
}