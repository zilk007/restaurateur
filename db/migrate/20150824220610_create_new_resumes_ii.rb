class CreateNewResumesIi < ActiveRecord::Migration
  def change
      create_table :resumes do |t|
      t.string  :title
      t.string :description
      t.attachment :avatar
      t.string :date

      t.timestamps
    end
  end
end
