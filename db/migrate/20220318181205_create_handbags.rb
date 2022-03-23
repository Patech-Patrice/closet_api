class CreateHandbags < ActiveRecord::Migration[7.0]
  def change
    create_table :handbags do |t|
      t.string :brand
      t.string :color
      t.string :fabric
      t.timestamps
    end
  end
end
