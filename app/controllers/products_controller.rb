class ProductsController < ApplicationController
  def index
    @user = Etsy.user('juliadickey1')
    @shop = @user.shop
    @listings = @shop.listings
  end
end
