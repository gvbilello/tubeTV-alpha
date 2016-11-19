class VideosController < ApplicationController

	def new
		config_yt_api_key
		@video = Yt::Video.new id: 'RS49gJ2eKrY'
		@video_link = get_video_link(@video)
		# binding.pry
		render 'show'
	end

	private
		def config_yt_api_key
			Yt.configuration.api_key = "AIzaSyBLW8pwIL_DHtEDY_K56wJCDeZ9akMIK58"
		end

		def get_video_link(video)
			"https://www.youtube.com/embed/#{video.id}"
		end
		# def embed_html(video)
		# 	video.embed_html
		# end
end