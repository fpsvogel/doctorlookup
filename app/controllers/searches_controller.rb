class SearchesController < ApplicationController
  def show
    @states = UsaStates::ALL
  end

  def update
    redirect_to searches_show_path, alert: "Placeholder alert.", status: "303"
  end
end
