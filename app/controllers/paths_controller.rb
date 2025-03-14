class PathsController < ApplicationController
  def new
  end

  def create
  end

  def edit
  end

  def index
    @paths = Path.all
  end

  def show
    @path = Path.find(params[:id])
  end

  def destroy
  end

  private

  def restaurant_params
    params.expect(path: [ :title, :description ])
  end
end
