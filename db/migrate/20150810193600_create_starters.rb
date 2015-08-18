class CreateStarters < ActiveRecord::Migration
  def change
    create_table :starters do |t|
    t.string :title
    t.string :special
    t.string :date

      t.timestamps
    end
  end
end
