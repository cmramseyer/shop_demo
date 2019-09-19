class CommentsController < ApplicationController
  def create
    @comment = Comment.new(
      product_id: params[:product_id],
      user_id: current_user.id,
      text: comment_params[:text]
      )
    if @comment.save
      redirect_to product_path(@comment.product), notice: "Good!"
    else
      redirect_to product_path(@comment.product), alert: "Error!"
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:product_id, :text)
  end

end
