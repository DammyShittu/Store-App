class Api::V1::ShoppingCartsController < ApplicationController
  def show
    @cart = @current_cart
    render :show, status: :ok
  end

  def destroy
    @cart = @current_cart
    if @cart.destroy
      session[:cart_id] = nil
      render json: { message: 'Session successfully deleted' }, status: :ok
    else
      render json: { message: 'Error! Failed to delete cart.' }
    end
  end

end
