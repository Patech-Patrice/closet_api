class AddBrandToHandbags < ActiveRecord::Migration[7.0]
  def change
    add_reference :handbags, :brand
  end
end
