<div id="admin">

	<div class="row">
	
		<div class="span8">
			<div class="tile">
				<h3>Add User</h3>
				<form class="form-inline">
					<input type="text" class="input-medium" placeholder="First Name" data-ng-model="newUser.firstName"/>
					<input type="text" class="input-medium" placeholder="Last Name" data-ng-model="newUser.lastName"/>
					<input type="text" class="input-medium" placeholder="Email Address" data-ng-model="newUser.emailAddress"/>
					<button type="button" class="btn btn-primary" data-ng-click="saveUser();">Add User</button>
				</form>
			</div>
		</div>
	
	</div>

	<div class="row">
	
		<div class="span12">
			<div class="tile">
				<table class="table stripedTable">
					<thead>
						<tr>
							<td>User</td>
							<td>Email Address</td>
						</tr>
					</thead>
					<tbody>
						<tr data-ng-repeat="user in users | orderBy:'lastName' | filter:userLookup.filter" data-ng-click="userLookup.selectedUser=user">
							<td>{{ user.lastName }}, {{ user.firstName }}</td>
							<td>{{ user.emailAddress }}
						</tr>
					</tbody>
				</table>
			</div>
		
		</div>
	
	</div>

</div>