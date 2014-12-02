class DashboardController < ApplicationController
  def corner
    @user_id = session["warden.user.user.key"][0][0]
    @user = User.find(@user_id)
    @shops = @user.shops
    
    @shop = Shop.all 
    @product = Product.all
    @comments =  Comment.order("rating DESC").limit(5)

    a = Comment.all
    d = a.map {|com| com.product_id}
    d.sort!

    frequencies = Hash.new(0)
    d.each {|w| frequencies[w] +=1}
    frequencies = frequencies.sort_by {|w, count| count}
    frequencies.reverse!

    @sayproduct = frequencies.map {|key, value| Product.find(key)}

    @new_products = Product.order("created_at DESC").limit(5)
  end
end
