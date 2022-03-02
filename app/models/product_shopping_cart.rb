class ProductShoppingCart < ApplicationRecord
  belongs_to :product
  belongs_to :shopping_cart

  def total_price
    self.quantity * self.product.price
  end
end
