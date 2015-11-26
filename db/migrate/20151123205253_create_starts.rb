class CreateStarts < ActiveRecord::Migration
  def change
    create_table :starts do |t|
      t.string :name
      t.string :description
      t.boolean :private, default: :false
      t.references :user, index: true, foreign_key: true

      t.integer :elevation
      t.string :address
      t.float :longitude
      t.float :latitude

      t.timestamps null: false
    end
  end
end
