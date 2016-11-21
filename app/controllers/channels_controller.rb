class ChannelsController < ApplicationController

	def show
		channel = Channel.find(params[:id])
		@channel = Yt::Channel.new id: channel.channel_key
		@videos = []
		@channel.videos.each do |video|
			break if @videos.length == 50
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
		def channel_params
			params.require(:channel).permit(:channel_key, :user_id)
		end
end