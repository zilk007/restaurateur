class RenameColumn < ActiveRecord::Migration
def self.up
    rename_column :vips, :restaurant, :title
  end

  def self.down
    # rename back if you need
  end
end
