class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.references :user, index: true, foreign_key: true

      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
