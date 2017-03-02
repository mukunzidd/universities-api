(function() {
  "use strict"

  angular.module("app").controller("universitiesCtrl", function($scope, $http) {
  	$scope.setUp = function() {
  		$http.get("/api/v1/universities.json").then(function(response) {
  			$scope.universities = response.data;
  		});
  	}

    // Toogle Principal
    $scope.tooglePrincipal = function(university) {
      university.principalVisible = !university.principalVisible;
    };

    // Add a new university
    $scope.addUniversity = function(name, principalFirstName, principalLastName) {
      var university = {
        name: name,
        principal_first_name: principalFirstName,
        pricinipal_last_name: principalLastName
      };

      $http.post("/api/v1/universities.json", university).then(function(response) {
        $scope.universities.push(response.data);
      });
    }

    // Update university
    $scope.editUniversity = function(university) {
      university.editMode = !university.editMode;
    };


    $scope.updateUniversity = function(university, index, name, principalFirstName, principalLastName) {
      var universityData = {
        name: name,
        principal_first_name: principalFirstName,
        pricinipal_last_name: principalLastName
      };

      $http.patch("/api/v1/universities/"+ university.id +".json", universityData).then(function(response) {
        $scope.universities[index] = response.data;
      });
    }

  window.$scope = $scope;
  });

})();
     