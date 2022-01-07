class SearchesController < ApplicationController
  def show
    @search = Search.new
  end

  def update
    @search = Search.new(search_params)
    if @search.valid?
      redirect_to searches_show_path, alert: "You've created a search! #{@search}"
    else
      render :show, status: :see_other
    end
  end

  private

  def search_params
    params.require(:search).permit(:name, :state)
  end
end
