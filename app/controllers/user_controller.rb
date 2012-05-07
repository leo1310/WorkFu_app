class UserController < ApplicationController
  

  def register_form
    @title = "Registration"
  end
  def create_manage
    @title = "Create/Manage"
  end
  def messages
    @title = "Messages"
  end
  def settings
    @title = "Settings"
  end
  def your_applications
    @title = "Your_Applications"
  end
  def your_profille
    @title = "Your Profille"
  end

end
