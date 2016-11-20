class ChannelsController < ApplicationController
	before_action :config_yt_api_key

	def show
		channel = Channel.find(params[:id])
		@channel = Yt::Channel.new id: channel.channel_key
		@videos = []
		@channel.videos.each do |video|
			@videos << video
		end
	end

	def new
		@channel = Channel.new
	end

	def create
		@user = User.find_by(id: session[:user_id])
		@channel = Channel.new(channel_params)
		@channel.user = @user

		if @channel.save
			flash[:success] = "Channel Successfully Added"
			redirect_to user_path(@user)
		else
			@errors = @channel.errors.full_messages
			render 'users/show'
		end
	end

	def destroy
	end

	private
		def config_yt_api_key
			Yt.configuration.api_key = "AIzaSyBLW8pwIL_DHtEDY_K56wJCDeZ9akMIK58"
		end

		def channel_params
			params.require(:channel).permit(:channel_key, :user_id)
		end
end