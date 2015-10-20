class CreateJabsTable < ActiveRecord::Migration
  def change
  	  	create_table :jabs do |t| 
  		t.string :jab_content
  		t.integer :user_id
  		t.integer :profile_id
  	end
  end
end
