class Product < ApplicationRecord
  before_save :code_uppercase
  has_many :product_shopping_carts, dependent: :destroy

  private

  def code_uppercase
    self.code.upcase!
  end
end
