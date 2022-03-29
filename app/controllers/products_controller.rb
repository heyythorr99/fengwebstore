class ProductsController < ApplicationController
  def index
    
        @products = Product.all
        @cart = session[:cart]
        ##@item_count = session[:cart].values.reduce(:+)
    if session[:cart].nil?
      session[:cart] = []
    end
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
    # return products as json list
    @products = Product.all
    render json: @products, only: [:id, :name, :description]
  end
end
