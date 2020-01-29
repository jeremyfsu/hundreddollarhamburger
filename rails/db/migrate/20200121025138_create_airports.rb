class CreateAirports < ActiveRecord::Migration
  def change
    create_table :airports do |t|
      t.string :location_id
      t.string :name
      t.string :city
      t.string :state
      t.decimal :lat
      t.decimal :lon
      t.decimal :elev
      t.string :id_and_name

      t.timestamps null: false
    end
    add_index :airports, :location_id, unique: true
    add_index :airports, :id_and_name, unique: true
  end
end
