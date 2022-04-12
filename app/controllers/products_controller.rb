class ProductsController < ApplicationController
  def index
        @products = Product.all
        if session[:cart].nil?
          session[:cart] = []
        end
        @cart = session[:cart]
        @item_count = session[:cart].values_at.reduce(:+)
  end

  def buy
    if session[:cart].nil?
        session[:cart] = []
    end
    product = Product.find(params[:id])
    session[:cart].append(product)
    redirect_to :products
  end

  def show
    @products = Product.find(params[:id])
    session[:cart].append(product)
    redirect_to :root
  end

  def checkout
    @cart = session[:cart]
    @cart.each do |item|
      p = Product.find(item["id"])
      p.quantity = p.quantity-1
      p.save
    end
    session[:cart] = []
  end

  def list
    # return products as json list
    @products = Product.all
    render json: @products, only: [:id, :name, :quantity, :price]
  end
end
