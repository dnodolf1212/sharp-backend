class CreateKnives < ActiveRecord::Migration[6.0]
  def change
    create_table :knives do |t|
      t.integer :owner_id
      t.string :category
      t.string :brand
      t.integer :price
      t.string :description
      t.boolean :for_sale
      t.integer :likes

      t.timestamps
    end
  end
end
