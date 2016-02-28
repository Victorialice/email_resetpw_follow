class RetrieveController < ApplicationController

	def new
		@user=User.new
	end

	def create
		user = User.new(user_params)
		@user = User.find_by_name(user.name)
		UserMailer.reset(@user).deliver

	end

	def edit
		@user = User.find_by_reset_code(params[:reset_code])
	end

	def update
		@user= User.find_by_name(params[:user][:name])
		if@user.update(user_params)
			render :show
		else
			render 'edit'
		end
	end

	private 

def user_params
	params.require(:user).permit(:name, :password, :password_confirmation, :status, :email, :auth_code,:reset_code)
	end
end
