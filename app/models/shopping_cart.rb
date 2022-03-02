class ShoppingCart < ApplicationRecord
  has_many :product_shopping_carts, dependent: :destroy
  has_many :products, through: :product_shopping_carts
end
