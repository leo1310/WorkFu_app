class Register < ActiveRecord::Base
  attr_accessible :First_name, :Last_Name, :email, :location, :microBio, :personal_url, :profesionalBio, :userName
end
