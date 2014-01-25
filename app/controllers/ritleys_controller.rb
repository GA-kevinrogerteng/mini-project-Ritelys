class RitleysController < ApplicationController
	def index
	end

	def new
		@ritley = Links.new
		@random = SecureRandom.urlsafe_base64(4)
	end

	def create
		ritley = params.require(:ritley).permit(:name, :url_link, :random_string)
		new_ritley = Links.create(ritley)

		redirect_to "/ritleys/#{new_ritley.id}"
	end

	def show_all	
		@ritleys = Links.all
		render :show_all
	end
	
	def show
		id = params[:id]
		@ritley = Links.find(id)
		render :show
	end

	def edit
		id = params[:id]
		@ritley = Links.find(id)
	end

	def update
		id = params[:id]
		ritley = Links.find(id)
		updated_ritley = params.require(:ritley).permit(:name, :url_link, :random_string)
		ritley.update(updated_ritley)
		redirect_to show_path(ritley.id)
	end

	def golink
		id = params[:id]
		go_link = Links.find(id)
		redirect_to "/ritleys/go/#{go_link['random_string']}"
	end


	def go
		id = params[:random_id]
		my_link = Links.find_by_random_string(id)
		if my_link['url_link'].include? ("https://") or ("http://")
			redirect_to my_link['url_link']
		else
		redirect_to my_link['url_link']
		end
	end



end