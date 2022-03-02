class ProductShoppingCart < ApplicationRecord
  belongs_to :product
  belongs_to :shopping_cart

  def total_price
    discounted_price(price_before_discount)
  end

  def discounted_price(price)
    if (self.product.code == 'MUG' && self.quantity >= 2)
      new_quantity = (self.quantity.to_f / 2).ceil
      price = new_quantity * self.product.price
    elsif (self.product.code == 'TSHIRT' && self.quantity >= 3)
      price = price - (price * 30 / 100)
    else
      price
    end
  end

  private
  def price_before_discount
    self.quantity * self.product.price
  end
end
