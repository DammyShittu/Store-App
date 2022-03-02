class Api::V1::ProductShoppingCartsController < ApplicationController

  def create
    selected_product = Product.find(params[:product_id])
    cart = @current_cart

    if cart.products.include?(selected_product)
      @order_item = cart.product_shopping_carts.find_by(product_id: selected_product)
      @order_item.quantity += 1
    else
      @new_item = ProductShoppingCart.new(shopping_cart_params)
      @new_item.product_id = selected_product.id
      @new_item.shopping_cart_id = cart.id
    end

    @new_item.save
    render json: @new_item, status: :created
  end

  private

  def shopping_cart_params
    params.require(:product_shopping_cart).permit(:quantity, :product_id, :shopping_cart_id)
  end
end
