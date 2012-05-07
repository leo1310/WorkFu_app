class UsersController < ApplicationController
  

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
    @title = "Your Applications"
  end
  def your_profille
    @title = "Your Profille"
  end

  def update_your_bio
    @title = "Update your Bio"
  end

end
