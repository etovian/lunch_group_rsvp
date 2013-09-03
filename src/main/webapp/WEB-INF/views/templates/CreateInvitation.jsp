<div id="createInvitation">

	<div class="row">
		
		<div class="span6">
			<div class="tile">
			<h3>Add Invitation</h3>
				<form class="form-horizontal">
			
					<div class="control-group">
						<label class="control-label" for="invitationTitle">Title</label>
						<div class="controls">
							<input 
								id="invitationTitle" 
								data-ng-model="selectedInvitation.title"
								data-ng-required="'true'" 
								placeholder="Enter an invitation name" 
								type="text"
								class="input-large"/>
						</div>
					</div>
					
					<div class="control-group">
						<label class="control-label" for="allowMultipleAttendance">Multiple Attenance?</label>
						<div class="controls">
							<input 
								id="allowMultipleAttendance"
								data-ng-model="selectedInvitation.allowMultipleAttendance"
								type="checkbox"/>
						</div>
					</div>
					
					<div class="control-group">
						<div class="controls">
							<div class="pull-right btn-group">
								<button class="btn" data-ng-click="clearSelectedInvitation();">Clear</button>
								<button class="btn btn-primary" data-ng-click="saveInvitation();">Save</button>
							</div>
						</div>
					</div>
					
				</form>
			</div>				
		</div>
		
	</div>

</div>