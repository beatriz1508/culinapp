class PathsController < ApplicationController
  before_action :set_path, only: [:edit, :update, :show]

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

  def update
    if @path.update(path_params)
      redirect_to root_path, notice: "Path atualizado com sucesso!"
    else
      render :edit, status: :unprocessable_entity
    end
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

  def set_path
    @path = Path.find(params[:id])
  end

  def path_params
    params.require(:path).permit(:title, :description)
  end
end
