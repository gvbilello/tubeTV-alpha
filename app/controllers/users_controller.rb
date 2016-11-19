class UsersController < ApplicationController

	def show
		@user = User.find(params[:user_id])
	end

	def new
		@user = User.new
	end

	def create
		user = User.new(user_params)
		if user.save
			session[:user_id] = user.id
			flash[:success] = "Account succeessfully created!"
			redirect_to "/users/#{user.id}"
		else
			@errors = user.errors.full_messages
			render 'new'
		end
	end

	def edit
	end

	def update
	end

	private
		def user_params
			params.require(:user).permit(:username, :email, :password, :password_confirmation)
		end

end