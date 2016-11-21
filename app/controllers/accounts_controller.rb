class AccountsController < ApplicationController

	def new
	end

	def create
		Yt.configuration.client_id = "704828876082-b463nsmo0uontb2vg0pvmglbn5isv8ak.apps.googleusercontent.com"

	end
end