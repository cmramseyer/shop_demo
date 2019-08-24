class ReviewsController < ApplicationController
  def show
    @review = Review.find(review_params[:id])
  end

  private
  def review_params
    params.permit(:id)
  end
end


