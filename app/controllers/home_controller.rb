class HomeController < ApplicationController
    def index
        @products = Product.all
    end

    def buy
        product = Product.find([params[:id])
        session[:cart].append(product)
        redircet_to :root
    end

    def checkout
        @cart = session[:cart]
        # empty the shopping cart
        session[:cart] = []
    end
end

