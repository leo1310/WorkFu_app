class CreateKeywords < ActiveRecord::Migration
  def change
    create_table :keywords do |t|
      t.string :keyword
      t.references :user	
      t.timestamps
    end
  end
end
