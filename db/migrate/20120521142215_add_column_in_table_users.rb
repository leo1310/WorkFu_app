class AddColumnInTableUsers < ActiveRecord::Migration
  def up
  	add_column :users, :group_individual, :string
  end

  def down
  	remove_column :users, :group_individual
  end
end
