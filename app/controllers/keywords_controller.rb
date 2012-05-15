class KeywordsController < ApplicationController
	def index
	    
	end
	
	def create
		@User = User.find(params[:id])
		"helllo"
		User.keyword.create(params[:keyword])
		@User.save
	end

	def destroy
		@User = User.find(params[:id])
	end
end
