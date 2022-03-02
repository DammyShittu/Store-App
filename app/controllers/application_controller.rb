class ApplicationController < ActionController::API
  before_action :current_cart

  private
    def current_cart
      if session[:shopping_cart_id]
        cart = ShoppingCart.find_by(:id => session[:shopping_cart_id])
        if cart.present?
          @current_cart = cart
        else
          session[:shopping_cart_id] = nil
        end
      end

      if session[:shopping_cart_id] == nil
        @current_cart = ShoppingCart.create
        session[:shopping_cart_id] = @current_cart.id
      end
    end
end
