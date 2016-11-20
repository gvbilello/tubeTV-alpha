class UsersController < ApplicationController
	before_action :logged_in_user, only: [:index, :edit, :update]
	before_action :correct_user, only: [:edit, :update]
	before_action :config_yt_api_key

	def show
		@user = User.find(params[:id])
	end

	def new
		@user = User.new
	end

	def create
		user = User.new(user_params)
		if user.save
			session[:user_id] = user.id
			flash[:success] = "Account succeessfully created"
			redirect_to "/"
		else
			@errors = user.errors.full_messages
			render 'new'
		end
	end

	def edit
		@user = User.find_by(id: session[:user_id])
	end

	def update
		@user = User.find_by(id: session[:user_id])
		if @user.update_attributes(user_params)
			flash[:success] = "Account information successfully updated"
			redirect_to @user
		else
			@errors = @user.errors.full_messages
			render 'edit'
		end
	end

	private
		def config_yt_api_key
			Yt.configuration.api_key = "AIzaSyBLW8pwIL_DHtEDY_K56wJCDeZ9akMIK58"
		end

		def user_params
			params.require(:user).permit(:username, :email, :password, :password_confirmation)
		end

		def logged_in_user
			unless logged_in?
				store_location
				flash[:danger] = "Please Log In"
				redirect_to signin_url
			end
		end

		def correct_user
			user = User.find_by(id: params[:id])
			redirect_to(root_url) unless current_user?(user)
		end

end