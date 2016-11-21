class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
	before_action :config_yt_api_key

  private
  	def config_yt_api_key
			Yt.configuration.api_key = "AIzaSyBLW8pwIL_DHtEDY_K56wJCDeZ9akMIK58"
			Yt.configuration.client_id = "704828876082-b463nsmo0uontb2vg0pvmglbn5isv8ak.apps.googleusercontent.com"
			Yt.configuration.client_secret = "PxG7-5gDjJILQKLOcTdIMAih"
		end
end
