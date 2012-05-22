class AddReferencesToUser < ActiveRecord::Migration
  def up
  	add_column :tests, :user_id, :integer
  	add_column :tests, :tovar, :string
  	add_column :tests, :price, :float

  end
  def down
  	remove_column :test, :user_id
  	remove_column :tests, :tovar
  	remove_column :tests, :price
  end
end
