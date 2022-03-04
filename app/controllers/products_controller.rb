class ProductsController < ApplicationController
  def index
    if session[:cart].nil?
      session[:cart] = []
    end
        @products = Product.all
        @cart = session[:cart]
  end

  def show
    @products = Product.find(params[:id])
    session[:cart].append(product)
    redirect_to :root
  end
end
