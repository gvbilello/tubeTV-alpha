class VideosController < ApplicationController

	def show
		video = Yt::Video.new id: params[:id]
		video_link = get_video_link(video)
		# binding.pry
		render 'show', locals: {video: video, video_link: video_link}
	end

	def new
	end

	private
		def get_video_link(video)
			"https://www.youtube.com/embed/#{video.id}"
		end

end