class NavigatebarsController < ApplicationController
	layout "profilles"

	def index 
		puts "xxxx xxxx xxx"
		puts "xxxx xxxx xxx"
		puts "xxxx xxxx xxx"
		puts "xxxx xxxx xxx"
	end	

	def update_your_bio		
		session[:right_tab] = 1
		@title = "Update your Bio"
  end
  def show  	
  	session[:right_tab] = 1
  end
  def refine_your_keywords
       @title = "Refine your Keywords"
  end
  def add_other_networks
  	@title = "Add other networks"
  end

  def reading_list
  	@title= "Reading list"
  end
  def preview_your_profille
  	@title="Preview your profille"
  end

end
