class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name, :username, :personal_url, :location, :micro_bio, :profesional_bio, :group_individual, :usetype_ids, :avatar
  
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :micro_bio, :length   => { :maximum => 160 }  
  validates :email, :format   => { :with => email_regex }
  validates :profesional_bio, :length => {:within => 0..1000}
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  has_many :keywords
  has_many :tests

  has_many :usetype_users
  has_many :usetypes, :through => :usetype_users

end
