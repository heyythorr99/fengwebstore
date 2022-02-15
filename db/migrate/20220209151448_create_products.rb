class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|

      t.string :name
      t.text :description
      t.string :image
      t.string :seller
      t.integer :quantity
      t.float :rating
      t.float :price
      
      t.timestamps
    end
  end
end
