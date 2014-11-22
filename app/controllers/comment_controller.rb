class CommentController < ApplicationController

  def show
    @comments = Comment.find(:product_id => params[:id])
  end

  def new
    @comment = Comment.new
  end

  def create
    @product = Product.find(params[:id])
    @comment = @product.comments.create(comment_params)
    redirect_to product_path(@product)
  end

  private
  def comment_params
    params.require(:comment).permit(:comment,:product_id)
  end
end
