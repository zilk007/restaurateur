class ReassessBooking < ActiveRecord::Migration
   def self.up
    change_table :bookings do |t|
      t.timestamp :date
    end
  end

  def self.down
    drop_attached_file :bookings, :date
  end
end
