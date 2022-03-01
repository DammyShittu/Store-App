class CreateProductShoppingCarts < ActiveRecord::Migration[7.0]
  def change
    create_table :product_shopping_carts do |t|
      t.integer :quantity
      t.references :product, null: false, foreign_key: true
      t.references :shopping_cart, null: false, foreign_key: true

      t.timestamps
    end
  end
end
