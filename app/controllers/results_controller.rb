class ResultsController < ApplicationController
  def index
    @search = Search.find(params[:search_id])
    @keywords = @search.keywords

    session[:brand] = nil unless params[:keep]
    session[:category_name] = nil unless params[:keep]
    session[:type] = nil unless params[:keep]

    session[:brand] ||= params[:brand]
    session[:category_name] ||= params[:category_name]
    session[:type] ||= params[:type]

    session[:brand] = nil if params[:remove_brand]
    session[:category_name] = nil if params[:remove_category_name]
    session[:type] = nil if params[:remove_type]

    @opts = {}
    @opts[:brand] = session[:brand]
    @opts[:category_name] = session[:category_name]
    @opts[:type] = session[:type]


    search_query = SearchQuery.new(@keywords, @opts)
    elastic_records = search_query.records
    @categories = search_query.aggregations.categories.buckets
    @brands = search_query.aggregations.brands.buckets
    @types = search_query.aggregations.types.buckets
    @records = elastic_records.map { |r| Searchable.create(r) }
  end
end
