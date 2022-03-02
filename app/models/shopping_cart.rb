class ShoppingCart < ApplicationRecord
  has_many :product_shopping_carts, dependent: :destroy
  has_many :products, through: :product_shopping_carts

  def all_items_total
    total = 0
    self.product_shopping_carts.each do |item|
      total += item.total_price
    end
    total
  end
end
