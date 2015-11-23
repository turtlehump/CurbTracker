class CreateEnds < ActiveRecord::Migration
  def change
    create_table :ends do |t|
      t.string :name
      t.integer :elevation
      t.float :longitude
      t.float :latitude

      t.timestamps null: false
    end
  end
end
