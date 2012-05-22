class TableSample < ActiveRecord::Migration
  def up
    create_table :products do |t|
      t.references :category
    end   
    add_column :users, :home_page_url, :string
    rename_column :users, :email, :email_address
  end
 
  def down
    rename_column :users, :email_address, :email
    remove_column :users, :home_page_url
    drop_table :products
  end
end
