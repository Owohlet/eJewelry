class HomeController < ApplicationController
  def index
    @shop = Shop.all 
    @product = Product.all
    @comments =  Comment.order("rating DESC")

    a = Comment.all
    d = a.map {|com| com.product_id}
    d.sort!

    frequencies = Hash.new(0)
    d.each {|w| frequencies[w] +=1}
    frequencies = frequencies.sort_by {|w, count| count}
    frequencies.reverse!

    @sayproduct = frequencies.map {|key, value| Product.find(key)}

    @top_products = Product.all.map{|p| [p, p.comments.count]}.sort_by{|a| a[1]}.first(5).map{|a| a[0]}

    @new_products = Product.order("created_at DESC").limit(5)
  end
end
