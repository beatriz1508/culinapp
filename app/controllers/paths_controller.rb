class PathsController < ApplicationController
  def new
    @path = Path.new
  end

  def create
    @path = Path.new(path_params)
    # if @path.save
    #   redirect_to @path, notice: "Path was successfully created"
    # else
    #   render :new, status: :unprocessable_entity
    # end
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
    @path = Path.find(params[:id])
    @path.destroy!
    redirect_to root_path
  end

  private

  def restaurant_params
    params.expect(path: [ :title, :description ])
  end
end
