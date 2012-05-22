class ChangeTableTests < ActiveRecord::Migration
  def up
  	change_table :tests do |t|  	  
  	       t.float :price
  	    end
  end

def down
  	 change_table :tests do |t|
  	   t.float :title
  	       t.string :title
  	   end
  	end
end
