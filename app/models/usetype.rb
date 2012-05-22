class Usetype < ActiveRecord::Base
  attr_accessible :title

  has_many :usetype_users, :dependent => :destroy
  has_many :users, :through =>  :usetype_users
end
