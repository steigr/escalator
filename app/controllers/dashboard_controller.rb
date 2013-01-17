class DashboardController < ApplicationController
	def index
    	@issuecount = Issue.all.count
    	@usercount = User.all.count
		@rotationcount = Rotation.all.count    	

    	respond_to do |format|
			format.html
		end
	end
end