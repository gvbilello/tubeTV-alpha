class SessionsController < ApplicationController

	def new
	end

	def create
		config_yt_api_key
		# binding.pry
		user = User.find_by(username: params[:session][:username])
		if user && user.authenticate(params[:session][:password])
			session[:user_id] = user.id
			redirect_to user
		else
			flash[:danger] = "Invalid username and/or password"
			render 'new'
		end
	end

	def destroy
		session.clear
		redirect_to root_url
	end

end