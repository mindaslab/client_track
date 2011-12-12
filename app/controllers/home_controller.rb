class HomeController < ApplicationController
	def search
		@search = params[:s]
		@clients = Client.search(params[:s]).paginate(:page => params[:page], :per_page => 20)
	end
end
