var SelectableDiv = function() {
	
	return {
		restrict: "A"
		, transclude: true
		, replace: false
		, template: "<div><div data-ng-transclude></div></div>"
		, link: function(scope, element, attrs) {
			
			element.on("click", function() {
				if(!scope.isMultiSelect) {
					element.siblings().removeClass("selected");
				}
				
				element.toggleClass("selected");				
			});
		}
		, scope: {
			isMultiSelect: "="
			, onSelected: "&"
		}
	};
};