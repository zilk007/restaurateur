class RenameColumnXinTableYtoZ < ActiveRecord::Migration
  def change
  	rename_column :users, :restaurant, :title
  end
end
