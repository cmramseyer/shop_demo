class ResultsController < ApplicationController
  def index
    @search = Search.find(params[:search_id])
    @keywords = @search.keywords
    search_query = SearchQuery.new(@keywords)
    elastic_records = search_query.records
    @categories = search_query.aggregations.categories.buckets
    @records = elastic_records.map { |r| Searchable.create(r) }
  end
end
