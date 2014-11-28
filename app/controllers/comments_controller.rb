class CommentsController < ApplicationController


  def show

    @comments = Comment.find(:product_id => params[:id])
  end

  before_action :authenticate_user!

  def new
    @comment = Comment.new
  end

  def create
    @shop = Shop.find(params[:shop_id])
    @product = @shop.products.find(params[:product_id])
    @comment = @product.comments.create(comment_params)
    redirect_to shop_product_path(@shop, @product)
  end

  private
  def comment_params
    params.require(:comment).permit(:comment,:product_id)
  end
end
