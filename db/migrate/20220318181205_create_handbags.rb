class CreateHandbags < ActiveRecord::Migration[7.0]
  def change
    create_table :handbags do |t|
      t.string :name
      t.string :style
      t.string :description
      t.string :brand_name
      t.string :size
      t.integer :price

      t.timestamps
    end
  end
end
