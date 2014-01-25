class RitleysController < ApplicationController
	def index
	end

	def new
		@random = SecureRandom.urlsafe_base64(4)
	end

	def create
		ritley = params.require(:ritley).permit(:name, :url_link, :random_string)
		new_ritley = Links.create(ritley)

		redirect_to "/ritleys/#{new_ritley.id}"
	end

	def show
		id = params[:id]
		@ritley = Links.find(id)
		render :show
	end

	def go
		id = params[:random_id]
		my_link = Links.find_by_random_string(id)
		my_link['url_link']
		if my_link['url_link'].include? ("https://")
		redirect_to my_link['url_link']
		else
		redirect_to "https://#{my_link['url_link']}"
		end
	end



end