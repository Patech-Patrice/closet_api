class CreateBrands < ActiveRecord::Migration[7.0]
  def change
    create_table :brands do |t|
      t.string :designer_name
      t.string :country_origin

      t.timestamps
    end
  end
end
