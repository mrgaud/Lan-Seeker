class ProfilesController < ApplicationController
	before_action :authenticate_user!
	before_action :only_current_user
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
		@user=User.find(params[:user_id])
		@profile=@user.profile
	end
	def update
		@user=User.find(params[:user_id])
		@profile=@user.profile
			if @profile.update_attributes(profile_params)
				flash[:success] = "Profile updated!"
				redirect_to user_path(params[:user_id])
			else
				flash[:danger] = "something went wrong. try again."
				render action: :edit
			end
	end


	private
	def only_current_user
		@user=User.find(params[:user_id])

		redirect_to(root_url) unless @user == current_user
	end

	def profile_params
		params.require(:profile).permit(:user_name, :first_name, :last_name, :facebook_page, :avatar,  :description)
	end
end