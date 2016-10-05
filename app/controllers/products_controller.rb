class ProductsController < ApplicationController
  def index
    @user = Etsy.user('Lukagwa')
    @shop = @user.shop
    @listings = @shop.listings
  end
end
