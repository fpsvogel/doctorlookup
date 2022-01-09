class SearchesController < ApplicationController
  def show
    @query = Query.new
  end

  def update
    @query = Query.new(query_params)
    respond_to do |format|
      if @query.valid?
        @results = @query.results
        format.html do
          redirect_to searches_show_path,
                      alert: "There was an issue. Please try again!"
        end
        format.turbo_stream do
          render turbo_stream:
            turbo_stream.replace("results", partial: "results",
                                            locals: { results: @results })
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
