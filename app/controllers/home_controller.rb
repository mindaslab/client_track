class HomeController < ApplicationController
	def search
		@search = params[:s]
		@clients = Client.search(params[:s])
	end
end
