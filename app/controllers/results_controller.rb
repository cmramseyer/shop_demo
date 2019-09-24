class ResultsController < ApplicationController
  def index
    @search = Search.find(params[:search_id])
    @keywords = @search.keywords

    opts = {}
    opts[:brand] = params[:brand]
    opts[:category_name] = params[:category_name]


    search_query = SearchQuery.new(@keywords, opts)
    elastic_records = search_query.records
    @categories = search_query.aggregations.categories.buckets
    @brands = search_query.aggregations.brands.buckets
    @records = elastic_records.map { |r| Searchable.create(r) }
  end
end
