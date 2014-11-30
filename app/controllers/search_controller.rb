class SearchController < ApplicationController
 skip_before_action :verify_authenticity_token



 def search
  @product = Product.where(name: params[:search]).first
  @shop = @product.shop
  #render json: 
  redirect_to shop_product_path(shop_id: @shop.id, id: @product.id)
  #/shops/3/products/38

end

end
