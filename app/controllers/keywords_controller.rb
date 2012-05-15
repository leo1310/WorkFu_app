class KeywordsController < ApplicationController
	def index
	    
		
	end
	
	def create		
		@user = User.find(params[:user_id])			
		@user.keywords.create(params[:keyword])
		@user.save

		redirect_to :controller => "navigatebars", :action => "refine_your_keywords"
	end

	def destroy
		puts "xxxxx xxxx xxxxx"
		puts "destroy"
		@keyword = Keyword.find(params[:id])
		@keyword.destroy

		redirect_to :controller => "navigatebars", :action => "refine_your_keywords"
	end

	#def show
	#	puts "xxxxx xxxx xxxxx"
	#	puts "destroy"
	#	redirect_to :controller => "navigatebars", :action => "refine_your_keywords"
	#end
end
