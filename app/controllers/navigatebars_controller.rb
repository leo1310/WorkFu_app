class NavigatebarsController < ApplicationController
	#before_filter :key_user
  before_filter :authenticate_user!
  layout "profilles"

	def index 
		
	end	

	def update_your_bio		
    @title = "update_your_bio"
		session[:second_tab] = 1
    session[:right_tab] = 1
		
  end
  
  def refine_your_keywords
       @title = "Refine your Keywords"
       session[:second_tab] = 2

  end
  def add_other_networks
  	@title = "Add other networks"
  	session[:second_tab] = 3
  end

  def reading_list  	
  	@title= "Reading list"
  	session[:second_tab] = 4
  end
  def preview_your_profille
  	@title="Preview your profille"
  	session[:second_tab] = 5
  end

  #def  key_user
  #@profile = Profile.find(current_user.id)  
  #end
end
