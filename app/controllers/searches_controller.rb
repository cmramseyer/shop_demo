class SearchesController < ApplicationController
  def create
    @search = Search.new(search_params)
    @search.user = current_user
    if @search.save
      redirect_to results_path(search_id: @search.id)
    else
      redirect_to root_path
    end
  end

  private

  def search_params
    params.require(:search).permit(:keywords)
  end
end