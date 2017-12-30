var app = angular.module('app', []);

var myCtrl = function($scope){
	var employees = [
		{name: 'Amit', dob: new Date("02-01-1965"), gender: 'Male', salary:538743.983 },
		{name: 'Sandeep', dob: new Date("06-12-1944"), gender: 'Male', salary:34333.98 },
		{name: 'Vasim', dob: new Date("09-02-1990"), gender: 'Male', salary:64454 },
		{name: 'Manoj', dob: new Date("10-08-2000"), gender: 'Male', salary:65454.09 },
		{name: 'Meha', dob: new Date("06-10-1993"), gender: 'Female', salary:89348.4588 },
		{name: 'Rahul', dob: new Date("09-03-1923"), gender: 'Male', salary:944544.983 },	
	]
	$scope.employees = employees;
	$scope.sortColumn = 'name';
	$scope.sortReverse = false;
	
	$scope.sortColumnByAscDsc = function(column){
		(column==$scope.sortColumn)?$scope.sortReverse= !$scope.sortReverse:$scope.sortReverse=false
		$scope.sortColumn = column;
	}
	
	$scope.softArrayClass = function(column){
		if(column == $scope.sortColumn){
			return $scope.sortReverse ? 'arrow-down':'arrow-up'
		}
		return "";
	}
}

app.controller('myController', myCtrl);