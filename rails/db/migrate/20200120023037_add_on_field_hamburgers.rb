class AddOnFieldHamburgers < ActiveRecord::Migration
  def change
    add_column :hamburgers, :on_field, :boolean
  end
end
