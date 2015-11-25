class CreateEnds < ActiveRecord::Migration
  def change
    create_table :ends do |t|
      t.references :start,  index: true, foreign_key: true
      t.references :user,  index: true, foreign_key: true
      t.string :name
      t.boolean :private, default: :false
      t.integer :elevation
      t.string :address
      t.float :longitude
      t.float :latitude

      t.timestamps null: false
    end
  end
end
