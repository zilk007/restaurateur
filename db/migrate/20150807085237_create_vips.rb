class CreateVips < ActiveRecord::Migration
  def change
    create_table :vips do |t|
    t.string :name
    t.string :email
    t.string :month
	t.string :restaurant

    t.timestamps
    end
  end
end
