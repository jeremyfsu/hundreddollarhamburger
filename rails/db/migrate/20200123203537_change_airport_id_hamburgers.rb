class ChangeAirportIdHamburgers < ActiveRecord::Migration
  def change
   change_column :hamburgers, :airport_id, :integer 
  end
end
