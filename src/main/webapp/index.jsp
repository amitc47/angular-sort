<html>
<link rel="stylesheet" href="style/style.css"/>
<body>
<div ng-app="app" ng-controller="myController">
<script type="text/javascript" src="script/angular.js"></script>
<script type="text/javascript" src="script/script.js"></script>
<!-- Search for <input type="text" ng-model="searchText"><br/><br/> -->
Search by name <input type="text" ng-model="searchText.name"><br/><br/>
	<table>
		<thead>
			<tr>
				<th ng-click="sortColumnByAscDsc('name')">Name<div ng-class="softArrayClass('name')" width="10px!important"></div></th>
				<th ng-click="sortColumnByAscDsc('dob')">Date of Birth <div ng-class="softArrayClass('dob')" width="10px !important"></div></th>
				<th ng-click="sortColumnByAscDsc('gender')">Gender <div ng-class="softArrayClass('gender')" width="10px"></div></th>
				<th ng-click="sortColumnByAscDsc('salary')" >Salary <div ng-class="softArrayClass('salary')" width="10px"></div></th>				
			</tr>
		</thead>
		<tbody>
			<tr ng-repeat="employee in employees | orderBy:sortColumn:sortReverse | filter:searchText">
				<td>{{employee.name | uppercase}}</td>
				<td>{{employee.dob | date : "dd-mm-yyyy"}}</td>
				<td>{{employee.gender | lowercase}}</td>
				<td>{{employee.salary | currency:"£":1}}</td>
			</tr>
		</tbody>
	</table>
</div>
</body>
</html>
