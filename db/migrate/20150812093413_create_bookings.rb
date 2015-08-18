class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
    t.string :title
    t.string :special
    t.string :name
    t.string :email
    t.string :date

    t.timestamps
    end
  end
end
