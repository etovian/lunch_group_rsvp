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

var demoApp = angular
	.module("demoApp", [])
	.controller("HomeController", HomeController);

function HomeController($scope) {

	_scope = $scope;
	
	$scope.family = [
        { firstName: "Amy", lastName: "Maio-Green", dob: "11/19/1974" }
        , { firstName: "Jillian", lastName: "Green", dob: "12/20/2009" }
        , { firstName: "Michael", lastName: "Green", dob: "07/29/1972" }
	];
	
	$scope.addFamilyMember = function() {
		$scope.family.push({ firstName: "Gary", lastName: "Green", dob: "06/15/1950" });
	};
}