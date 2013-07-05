<div id="manageLocations">
	
	<div class="row">
		<div class="span8">
		
			<div class="tile">
				<h3>Manage Locations</h3>
				<table id="tblLocations" class="table stripedTable">
					<thead>
						<tr>
							<td>Name</td>
							<td>Address</td>
							<td>City</td>
							<td>Zip</td>
						</tr>
					</thead>
					<tbody>
						<tr 
							data-ng-repeat="location in locations | orderBy:'name'" data-ng-click="selectLocation(location);">
							
							<td>{{location.name}}</td>
							<td>{{location.streetAddress}}</td>
							<td>{{location.city}}</td>
							<td>{{location.zip}}</td>
						</tr>
					</tbody>
				</table>
			</div>
		
		</div>
		
		<div class="span6">
			<div class="tile">
			<h3>Add / Edit Location</h3>
				<form class="form-horizontal">
			
					<div class="control-group">
						<label class="control-label" for="locationName">Name</label>
						<div class="controls">
							<input 
								id="locationName" 
								data-ng-model="selectedLocation.name"
								data-ng-required="'true'" 
								placeholder="Enter a location name" 
								type="text"
								class="input-large"/>
						</div>
					</div>
					
					<div class="control-group">
						<label class="control-label" for="locationName">Address</label>
						<div class="controls">
							<input 
								id="locationName" 
								data-ng-model="selectedLocation.streetAddress"
								data-ng-required="'true'" 
								placeholder="Enter an address" 
								type="text"
								class="input-large"/>
						</div>
					</div>
					
					<div class="control-group">
						<label class="control-label" for="locationCity">City</label>
						<div class="controls">
							<input 
								id="locationCity" 
								class="input-medium"
								placeholder="Enter a city"
								data-ng-model="selectedLocation.city"
								data-ng-required="'true'"  
								type="text"/>
						</div>
					</div>
					
					<div class="control-group">
						<label class="control-label" for="locationZip">Zip</label>
						<div class="controls">
							<input 
								id="locationZip" 
								class="input-small"
								placeholder="Enter a zip code"
								data-ng-model="selectedLocation.zip"
								data-ng-required="'true'"  
								type="text"/>
						</div>
					</div>
					
					<div class="control-group">
						<div class="controls">
							<div class="pull-right btn-group">
								<button class="btn" data-ng-click="clearSelectedLocation();">Clear</button>
								<button class="btn btn-primary" data-ng-click="saveLocation();">Save</button>
							</div>
						</div>
					</div>
					
				</form>
			</div>				
		</div>
		
	</div>
	
	
	
</div>