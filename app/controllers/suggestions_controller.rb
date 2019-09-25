class SuggestionsController < ApplicationController
  def index
    query = SuggestionsQuery.new(params[:keywords])
    @suggestions = query.records
  end

end


