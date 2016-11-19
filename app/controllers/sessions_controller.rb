class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by(username: params[:session][:email])
		if user && user.authenticate(params[:sessions][:password])
			session[:user_id] = user.id
			redirect_to user
		else
			flash[:danger] = "Invalid username and/or password"
			render 'new'
		end
	end

	def destroy
		session.clear
		redirect_to '/'
	end

end