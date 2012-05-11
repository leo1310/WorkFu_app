class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user

  private 

  def current_user
  	@current_user ||=User.find(ssesion[:user_id]) if ssesion[:user_id]
  end
end
