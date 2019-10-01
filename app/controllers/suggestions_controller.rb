class SuggestionsController < ApplicationController
  def index
    query = SuggestionsQuery.new(params[:query])

    @suggestions = query.records

    arr = []
    @suggestions.map do |sug|
      arr << sug.name
    end

    response = {query: params[:query], suggestions: arr, data: arr}
    render json: response
  end

end


