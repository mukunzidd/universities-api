(function() {
  "use strict"

  angular.module("app").controller("universitiesCtrl", function($scope, $http) {
  	$scope.setup = function() {
  		$http.get("/api/v1/universities.json").then(function(response) {
  			$scope.universities = response.data;
  		});
  	}

  	// $scope.principalVisible = false;

  	$scope.tooglePrincipal = function(university) {
  		university.principalVisible = !university.principalVisible;
  	};


  window.$scope = $scope;
  });

})();
     