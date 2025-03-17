class JourneysController < ApplicationController

  def create
    @path = Path.find(params[:path_id])
    @journey = Journey.create!(path: @path, user: current_user)
    redirect_to path_path(@path)
  end

end
