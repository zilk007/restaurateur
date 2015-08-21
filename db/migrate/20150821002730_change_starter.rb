class ChangeStarter < ActiveRecord::Migration
  def change
  	remove_column :starters, :date
  end
end