class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :user_name
      t.string :personal_url
      t.string :location
      t.string :micro_Bio
      t.string :professional_Bio
      t.timestamps
    end
  end
end
