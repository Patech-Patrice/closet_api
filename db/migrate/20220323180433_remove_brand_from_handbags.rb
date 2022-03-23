class RemoveBrandFromHandbags < ActiveRecord::Migration[7.0]
  def change
    remove_column :handbags, :brand, :string
  end
end
