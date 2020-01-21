class CreateAirports < ActiveRecord::Migration
  def change
    create_table :airports do |t|
      t.string :airport_id
      t.string :name
      t.string :city
      t.string :state
      t.decimal :lat
      t.decimal :lon
      t.decimal :elev

      t.timestamps null: false
    end
  end
end
