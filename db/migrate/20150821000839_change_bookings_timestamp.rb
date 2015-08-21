class ChangeBookingsTimestamp < ActiveRecord::Migration
  def change
  	change_column :bookings, :date, :timestamp
  end
end
