class NavigatebarsController < ApplicationController
  before_filter :authenticate_user!
  layout "profilles"

	def index 
		
	end	


	def update_your_bio		
    @title = "update_your_bio"
		session[:second_tab] = 1
    session[:right_tab] = 1
    @user = User.find(current_user.id)    		
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

  def update
    #puts "xxx "*3
    #puts "update"
    #@user = User.create( params[:user] )
    @user = User.find(current_user.id)
    if @user.update_attributes(params[:user])
        flash[:success] = "Your profile is update!"
        redirect_to :action => "update_your_bio"  
    else  
        flash[:error] = "Error! Your profile is not update!"
        redirect_to :action => "update_your_bio"   
    end
  end


end
