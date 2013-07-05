<div 
	id="popup-user-lookup"
	data-ng-show="ui.showUserLookup"  
	data-ng-animate="'fade'"	 
	class="shadow tile">
	
	<button type="button" class="close" data-ng-click="ui.showUserLookup=false;">×</button>
	
	<h3>User Lookup</h3>
	
	<div class="input-prepend">
		<span class="add-on">
			<i class="icon-search"></i>
		</span>
		<input class="input-medium" type="text" placeholder="User" data-ng-model="userLookup.filter">
	</div>
	
	<div class="lookupTableContainer">
		<table class="table stripedTable">
			<thead>
				<tr>
					<td>User</td>
					<td>Email Address</td>
				</tr>
			</thead>
			<tbody>
				<tr data-ng-repeat="user in users | orderBy:'lastName' | filter:userLookup.filter" data-ng-click="userLookup.selectedUser=user">
					<td>{{ user.firstName }} {{ user.lastName }}</td>
					<td>{{ user.emailAddress }}
				</tr>
			</tbody>
		</table>
	</div>
	<div class="pull-right btn-group">
		<button class="btn" type="button" data-ng-click="ui.showUserLookup=false;">Cancel</button>
		<button data-ng-click="userLookup.onUserConfirmed(userLookup.selectedUser)" class="btn btn-primary" type="button">Add</button>
	</div>
</div>