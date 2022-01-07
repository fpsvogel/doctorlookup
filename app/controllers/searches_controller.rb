class SearchesController < ApplicationController
  def show
    @query = Query.new
  end

  def update
    @query = Query.new(query_params)
    if @query.valid?
      results = @query.results
      redirect_to searches_show_path, alert: "You've created a query! #{results.first}"
    else
      render :show, status: :see_other
    end
  end

  private

  def query_params
    params.require(:query)
          .permit(:taxonomy_description, :state, :first_name, :last_name)
  end
end
