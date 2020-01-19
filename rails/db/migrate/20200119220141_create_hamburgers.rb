class CreateHamburgers < ActiveRecord::Migration
  def change
    create_table :hamburgers do |t|
      t.string :airport_id
      t.string :name
      t.text :notes
      t.string :website

      t.timestamps null: false
    end
  end
end
