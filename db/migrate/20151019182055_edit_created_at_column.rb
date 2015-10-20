class EditCreatedAtColumn < ActiveRecord::Migration
  def change
  	rename_column :users, :date_created, :created_at
  end
end
