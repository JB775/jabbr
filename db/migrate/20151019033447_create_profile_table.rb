class CreateProfileTable < ActiveRecord::Migration
  def change
  	  	create_table :profiles do |t| 
		    t.integer "user_id"
		    t.string  "profile_headline"
		    t.string  "profile_about_content"
  	end
  end
end
