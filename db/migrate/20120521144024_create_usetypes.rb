class CreateUsetypes < ActiveRecord::Migration
  def up
    create_table :usetype do |t|
  		t.string :title
  		t.timestamps
    end
  end
  def down
  	drop_table :usetype
  end
end
