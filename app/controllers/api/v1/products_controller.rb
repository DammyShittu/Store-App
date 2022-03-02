class Api::V1::ProductsController < ApplicationController
  before_action :set_product, only: [:show, :update]

  def index
    @products = Product.all
  end

  def show
    render :show, status: :ok
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      render json: @product, status: :created
    else
      render @product.errors, status: :unprocessable_entity
    end
  end

  def update
    if @product.update(price_params)
      render :show, status: :created
    else
      render @product.errors, status: :unprocessable_entity
    end
  end

  private
  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:code, :name, :price)
  end

  def price_params
    params.require(:product).permit(:price)
  end
end
