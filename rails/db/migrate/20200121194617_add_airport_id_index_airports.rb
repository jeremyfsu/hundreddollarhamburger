class AddAirportIdIndexAirports < ActiveRecord::Migration
  def change
  add_index :airports, :airport_id, unique: true
  end
end
