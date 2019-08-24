class ResultsController < ApplicationController
  def index
    @search = Search.find(params[:search_id])
    keywords = @search.keywords

    @records = Search.with_keywords(keywords)
  end
end
