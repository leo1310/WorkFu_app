class Keyword < ActiveRecord::Base
   attr_accessible :keyword
  belongs_to :user
end
