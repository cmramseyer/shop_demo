class ResultsController < ApplicationController
  def index
    @search = Search.find(params[:search_id])
    @keywords = @search.keywords

    set_opts_filters

    search_query = SearchQuery.new(@keywords, @opts)
    elastic_records = search_query.records
    @categories = search_query.aggregations.categories.buckets
    @brands = search_query.aggregations.brands.buckets
    @types = search_query.aggregations.types.buckets
    @records = elastic_records.map { |r| Searchable.create(r) }
  end

  private

  def set_opts_filters
    @opts = {}
    [:brand, :category_name, :type].each do |key|
      # each filter link sends a keep params
      # we will delete session variables if keep it's not present
      session[key] = nil unless params[:keep]
      # we will store the param value if session var is not present
      session[key] ||= params[key]
      # we will delete the session value if the remove param is present
      session[key] = nil if params["remove_#{key}".to_sym]
      # now we assign the session value into an instance variable
      @opts[key] = session[key]
    end

  end
end
