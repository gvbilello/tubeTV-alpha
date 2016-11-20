class VideosController < ApplicationController
	before_action :config_yt_api_key

	def show
		video = Yt::Video.new id: params[:id]
		video_link = get_video_link(video)
		render 'show', locals: {video: video, video_link: video_link}
	end

	def new
	end

	private
		def config_yt_api_key
			Yt.configuration.api_key = "AIzaSyBLW8pwIL_DHtEDY_K56wJCDeZ9akMIK58"
		end

		def get_video_link(video)
			"https://www.youtube.com/embed/#{video.id}"
		end

end