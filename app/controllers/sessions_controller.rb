class SessionsController < ApplicationController
	def new
	end

	def create
		user = User.find_by(name: params[:name])
		if user and user.status == User::SILENT.to_s

			redirect_to login_url, alert: "Please activate your account"
		elsif user.authenticate(params[:password]) 
			session[:user_id] = user.id
			redirect_to users_url
		elsif
			redirect_to login_url, alert: "Invalid user/password combination"
		end
	end

	def destory
		session[:user_id] = nil
		redirect_to user_url, notice: "Logged out"
	end

end
