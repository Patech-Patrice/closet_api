class AddNameToHandbags < ActiveRecord::Migration[7.0]
  def change
    add_column :handbags, :name, :string
  end
end
