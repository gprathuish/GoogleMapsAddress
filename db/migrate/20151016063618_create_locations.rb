class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :latlng
      t.string :name
      t.string :phone

      t.timestamps null: false
    end
  end
end
