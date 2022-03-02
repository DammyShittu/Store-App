class ShoppingCart < ApplicationRecord
  has_many :product_shopping_carts, dependent: :destroy
  has_many :products, through: :product_shopping_carts

  def items_array
    all_items = []
    self.product_shopping_carts.map do |item|
      all_items << item.product.code
    end
    all_items
  end

  def all_items_total
    total = 0
    self.product_shopping_carts.each do |item|
      total += item.total_price
    end
    total
  end
end
