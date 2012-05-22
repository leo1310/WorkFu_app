class CreateUsetypeUsers < ActiveRecord::Migration
  def up
    create_table :usetype_users do |t|
    	t.integer :user_id
    	t.integer :usetype_id
      t.timestamps
    end
  end
  def down
  	drop_table :usetype_users
  end
end
