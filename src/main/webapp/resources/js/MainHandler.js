$(onReady);
var _scope;

function onReady() {
	addEventListeners();
}

function addEventListeners() {
	$("#btnAutoFilter").click(function() {
		_scope.name = "Gary";
		_scope.$digest();
	});
}