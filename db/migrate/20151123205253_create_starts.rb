class CreateStarts < ActiveRecord::Migration
  def change
    create_table :starts do |t|
      t.string :name
      t.string :description
      t.integer :elevation
      t.float :longitude
      t.float :latitude

      t.timestamps null: false
    end
  end
end
