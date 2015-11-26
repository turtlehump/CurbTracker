class CreateRouteTimes < ActiveRecord::Migration
  def change
    create_table :route_times do |t|
      t.integer :length
      t.references :route, index: true, foreign_key: true
      t.references :user,  index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
