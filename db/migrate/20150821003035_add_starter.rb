class AddStarter < ActiveRecord::Migration
 def self.up
    change_table :starters do |t|
      t.timestamp :date
    end
  end

  def self.down
    drop_attached_file :starters, :date
  end
end

