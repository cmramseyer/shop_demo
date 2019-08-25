class SearchableReview

  include ActionView::Helpers::UrlHelper
  delegate :url_helpers, to: 'Rails.application.routes'
  delegate :created_at, to: :@review

  def initialize(review)
    @review = review
  end

  def type
    "Review"
  end

  def title
    link_to @review.title, review_path
  end

  def overview
    link_to @review.content_overview, review_path
  end

  def review_path
    url_helpers.review_path(@review)
  end
end