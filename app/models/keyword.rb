class Keyword < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :user
end
