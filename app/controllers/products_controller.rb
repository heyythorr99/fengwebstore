class ProductsController < ApplicationController
  def index
    if session[:cart].nil?
      session[:cart] = []
    end
        @products = Product.all
        @cart = session[:cart]
  end

  def buy
    if session[:cart].nil?
        session[:cart] = []
    end
    product = Product.find(params[:id])
    session[:cart].append(product)
    redirect_to :root
  end

  def show
    @products = Product.find(params[:id])
    session[:cart].append(product)
    redirect_to :root
  end

  def checkout
    @cart = session[:cart]
    session[:cart] = []
  end

  def list
    @products = Product.all
    rend json: @products
  end
end
