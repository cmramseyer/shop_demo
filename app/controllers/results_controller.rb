class ResultsController < ApplicationController
  def index
    @search = Search.find(params[:search_id])
    @keywords = @search.keywords

    @results_session = ResultsSession.new(session).set_session_values(params)

    search_query = SearchQuery.new(@keywords, @results_session.options)
    elastic_records = search_query.records
    @categories = search_query.aggregations.categories.buckets
    @brands = search_query.aggregations.brands.buckets
    @types = search_query.aggregations.types.buckets
    @records = elastic_records.map { |r| Searchable.create(r) }
  end

end
