class ProfilesController < ApplicationController
	def new 
		# Form for users to make their profile
		@user=User.find(params[:user_id])
		@profile = Profile.new
	end
	
	def create
		@user = User.find(params[:user_id])
		@profile = @user.build_profile(profile_params)
		if @profile.save
			flash[:success] = "Profile successfully updated."
			redirect_to user_path(params[:user_id])
		else
			flash[:danger] = "Err Err. Something went wrong. Profile not saved"
			render action: :new
		end
	end
	def edit

	end


	private
	def profile_params
		params.require(:profile).permit(:user_name, :first_name, :last_name, :facebook_page, :description)
	end
end