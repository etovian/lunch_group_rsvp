//var demoApp = angular.module("demoApp", []);
//demoApp.controller("HomeController", HomeController);

var demoApp = angular
	.module("demoApp", [])
	.controller("HomeController", HomeController);

function HomeController($scope) {
	
	$scope.family = [
        { firstName: "Amy", lastName: "Maio-Green", dob: "11/19/1974" }
        , { firstName: "Jillian", lastName: "Green", dob: "12/20/2009" }
        , { firstName: "Michael", lastName: "Green", dob: "07/29/1972" }
	];
}