class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.string :description
      t.string :main_image
      t.string :sub_image_0
      t.string :sub_image_1
      t.string :sub_image_2

      t.timestamps
    end
  end
end
