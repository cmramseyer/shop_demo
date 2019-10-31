class LikeController < ApplicationController
  def create
    @product_comment = ProductComment.find(params[:product_comment_id])
    @product_comment.like!
    @legend = @product_comment.decorate.likes_legend 
  end
end
