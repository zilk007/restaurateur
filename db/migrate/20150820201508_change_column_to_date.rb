class ChangeColumnToDate < ActiveRecord::Migration
  def self.up
    change_column :bookings, :date, :datetime

  end

  def self.down
    change_column :bookings, :date, :string
  end
end

