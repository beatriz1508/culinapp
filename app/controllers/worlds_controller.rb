class WorldsController < ApplicationController

  def show
    @world = World.find(params[:id])
    @tasks = Task.where(world: params[:id])
  end

  def destroy
    # @world = World.find(params[:id])
    # @world.destroy
  end

  private

  def world_params
    params.require(:world).permit(:title, :done)
  end
end
