class CreateNetworks < ActiveRecord::Migration
  def up
    create_table :networks do |t|
    	t.string :title

      t.timestamps
    end
  end

  def down
  	drop_table :networks
  end
end
