class ProfilesController < ApplicationController
	def new 
		# Form for users to make their profile
		@user=User.find(params[:user_id])
		@profile = @user.build_profile
	end
	def show
	end

end