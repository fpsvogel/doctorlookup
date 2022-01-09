class SearchesController < ApplicationController
  def show
    @query = Query.new
  end

  def create
    @query = Query.new(query_params)
    respond_to do |format|
      if @query.valid?
        @results = @query.results
        session[:query_stopping_point] = @query.stopping_point
        format.html do
          redirect_to searches_show_path,
                      alert: "There was an issue with your search 😖"
        end
        format.turbo_stream do
          render turbo_stream:
            [
              turbo_stream.replace("results", partial: 'wrapped_results',
                                              locals: { results: @results }),
              turbo_stream.replace("show_more", partial: 'show_more_button',
                                                locals: { results: @results })
            ]
        end
      else
        format.html { render :show, status: :unprocessable_entity }
      end
    end
  end

  def show_more
    stopping_point = session[:query_stopping_point]
    @query = Query.new(stopping_point:, **query_params)
    respond_to do |format|
      if @query.valid?
        @results = @query.results
        session[:query_stopping_point] = @query.stopping_point
        format.html do
          redirect_to searches_show_path,
                      alert: "There was an issue showing more results 😖"
        end
        format.turbo_stream do
          render turbo_stream:
            [
              turbo_stream.append("results", partial: 'results',
                                            locals: { results: @results }),
              turbo_stream.replace("show_more", partial: 'show_more_button',
                                                locals: { results: @results })
            ]
        end
      else
        format.html { render :show, status: :unprocessable_entity }
      end
    end
  end

  private

  def query_params
    params.require(:query)
          .permit(:taxonomy_description,
                  :state,
                  :city,
                  :gender,
                  :first_name,
                  :last_name)
  end
end
