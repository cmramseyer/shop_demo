class ResultsController < ApplicationController
  def index
    @search = Search.find(params[:search_id])
    @keywords = @search.keywords
    elastic_records = Search.with_keywords(@keywords)
    @records = elastic_records.map { |r| Searchable.create(r) }
  end
end
