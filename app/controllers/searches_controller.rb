class SearchesController < ApplicationController
  def show
    @query = Query.new
  end

  def create
    @query = Query.new(query_params)
    respond_to_create_or_show_more(results_action: "replace",
                                   results_partial: "wrapped_results")
  rescue Exceptions::NoResultsFound
    redirect_to searches_show_path,
      alert: "No results were found. Please try again with different search parameters.",
      status: :unprocessable_entity
  end

  def show_more
    stopping_point = session[:query_stopping_point]
    effective_taxonomy_attr = session[:effective_taxonomy_attr]
    @query = Query.new(stopping_point:,
                       effective_taxonomy_attr:,
                       **query_params)
    respond_to_create_or_show_more(results_action: "append",
                                   results_partial: "results")
  end

  private

  def query_params
    params.require(:query)
          .permit(*Query::FORM_PARAMS)
  end

  def respond_to_create_or_show_more(results_action:, results_partial:)
    respond_to do |format|
      if @query.valid?
        @results = @query.results
        session[:query_stopping_point] = @query.stopping_point
        session[:effective_taxonomy_attr] = @query.effective_taxonomy_attr
        format.html do
          redirect_to searches_show_path,
                      alert: "There was an issue 😖 Please try again."
        end
        format.turbo_stream do
          render turbo_stream:
            [
              turbo_stream.send(results_action,
                                "results",
                                partial: results_partial,
                                locals: { results: @results }),
              turbo_stream.replace("show_more", partial: 'show_more_button',
                                                locals: { results: @results }),
              turbo_stream.remove("flash")
            ]
        end
      else
        format.html { render :show, status: :unprocessable_entity }
      end
    end
  end
end
