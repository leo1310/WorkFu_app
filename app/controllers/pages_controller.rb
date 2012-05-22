class PagesController < ApplicationController
  before_filter :authenticate_user!
  def index
    @user = User.first
    a = @user.keywords.first
    #@k = @user.keywords.build
    #@k.keyword = "kkk"
    #@k.save

  end  

  def register_form
    @title = "Registration"
  end
  def create_manage
    session[:right_tab] = 5
    @title = "Create/Manage"
  end
  def messages
     session[:right_tab] = 2
    @title = "Messages"
  end
  def settings
    session[:right_tab] = 3
    @title = "Settings"
  end
  def your_applications
    session[:right_tab] = 4
    @title = "Your Applications"
  end
  def opportunities
    session[:right_tab] = 6
    @title = "Opportunities"
  end


  def home
    @title = "Home"
    session[:right_tab] = 0
  end
 
 def update
   puts params
 end 

 def ajax
 @movies = Movie.all   
 end

 def movie_new
  @movie = Movie.create(params[:movie])
   respond_to do |format|
      format.html do
        redirect_to :action => "ajax"
      end  
     
      format.js do 
        @movies = Movie.all  
      end 
    end 

 end

end
