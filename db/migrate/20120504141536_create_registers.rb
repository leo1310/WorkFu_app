class CreateRegisters < ActiveRecord::Migration
  def change
    create_table :registers do |t|
      t.string :First_name
      t.string :Last_Name
      t.string :email
      t.string :userName
      t.string :personal_url
      t.string :location
      t.string :microBio
      t.string :profesionalBio

      t.timestamps
    end
  end
end
