class AddInfo < ActiveRecord::Migration
  
  def up
  	add_column :users, :first_name,      :string 
    add_column :users, :last_name,       :string   
    add_column :users, :username,        :string   
    add_column :users, :personal_url,    :string   
    add_column :users, :location,        :string   
    add_column :users, :micro_bio,       :text   
    add_column :users, :profesional_bio, :text           
  end

  def down
  	remove_column :users, :first_name
  	remove_column :users, :last_name
  	remove_column :users, :username
  	remove_column :users, :personal_url
  	remove_column :users, :location
  	remove_column :users, :micro_bio
  	remove_column :users, :profesional_bio   
  end
end
