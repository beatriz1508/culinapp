class WorldsController < ApplicationController

  def show
    @world = World.find(params[:id])
  end

  private

  def world_params
    params.require(:world).permit(:title, :done)
  end
end
