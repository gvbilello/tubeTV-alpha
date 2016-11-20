class StaticController < ApplicationController
	before_action :config_yt_api_key
	
	def index
	end

	private
		def config_yt_api_key
			Yt.configuration.api_key = "AIzaSyBLW8pwIL_DHtEDY_K56wJCDeZ9akMIK58"
		end

end