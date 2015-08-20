class ChangeStarterDateColumn < ActiveRecord::Migration
   def self.up
    change_column :starters, :date, :date

  end

  def self.down
    change_column :starters, :date, :string
  end
end
