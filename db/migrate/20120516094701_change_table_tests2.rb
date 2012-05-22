class ChangeTableTests2 < ActiveRecord::Migration
  def up
  	  	change_table :tests do |t|
  	      
  	       #t.string :title
  	       #t.float :title
  	        
  	    end
  end

  def down
  	change_table :tests do |t|  	        		
  	       t.float :title
  	       t.string :title        
  	   end
  	end
end
