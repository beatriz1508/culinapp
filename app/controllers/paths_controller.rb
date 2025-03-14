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
  end

  def show
  end

  def destroy
  end
end
