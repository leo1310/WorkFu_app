class UsetypeUser < ActiveRecord::Base
  attr_accessible :user_id, :usetype_id

  belongs_to :user
  belongs_to :usetype
end
